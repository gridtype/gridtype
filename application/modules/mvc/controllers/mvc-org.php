<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Mvc extends MX_Controller {
	public function gen($table = '')
	{
	    if (strlen($table) == 0) {
	        echo 'No table has been specified.';
	        die();
	    }
	    $query = $this->column_names($table);
	    if ($query->num_rows == 0) {
	        echo 'The specified table is not in the database.';
	        die();
	    }
	    $this->gen_css_file($table);
	    $this->gen_js_file($table);
	    $this->gen_model_file($table);
	    $this->gen_controller_file($table);
	    $this->gen_index_view_file($table);
	    $this->gen_add_view_file($table);
	    $this->gen_edit_view_file($table);
	}
	private function column_names($table)
	{
	    $sql = "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS ";
	    $sql .= "WHERE TABLE_SCHEMA = '".SITE."' ";
	    $sql .= "AND TABLE_NAME = '".$table."'";
	    return $this->db->query($sql);
	}
	private function is_auto_increment($table, $column)
	{
	    $sql = "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE ";
	    $sql .= "TABLE_SCHEMA = '".SITE."' AND TABLE_NAME = '".$table."' ";
	    $sql .= "AND EXTRA LIKE '%AUTO_INCREMENT%'";
	    $query = $this->db->query($sql);
	    foreach ($query->result() as $row) {
	        if ($column == $row->COLUMN_NAME) {
	            return TRUE;
	        }
	    }
	    return FALSE;
	}

	private function id($table)
	{
	    $query = $this->column_names($table);
	    foreach ($query->result() as $row) {
	        if ($this->is_auto_increment($table, $row->COLUMN_NAME)) {
	            return $row->COLUMN_NAME;
	        }
	    }
	    return '';
	}

	private function gen_css_file($table)
	{
	    @mkdir('css');
	    $filename = 'css/'.$table.'.css';
	    $fp = fopen($filename, 'w');
	    fwrite($fp, "* { margin:0; }\n");
	    fwrite($fp, "table { margin-left:20px; }\n");
	    fwrite($fp, "h3, h4, h5 { font-family:sans-serif; margin-left:20px; }\n");
	    fwrite($fp, "table th, td { font-family:sans-serif; border:1px solid black; padding:5px; }\n");
	    fwrite($fp, ".error { font-family:sans-serif; font-style:italic; margin-left:20px; }\n");
	    fwrite($fp, "\n");
	    fclose($fp);
	    echo 'Built '.$table.' css file.<br>';
	}

	private function gen_js_file($table)
	{
	    @mkdir('js');
	    $filename = 'js/'.$table.'.js';
	    $fp = fopen($filename, 'w');
	    $query = $this->column_names($table);
	    foreach ($query->result() as $row) {
	        if ($this->is_auto_increment($table, $row->COLUMN_NAME)) {
	            continue;
	        }
	        fwrite($fp, "document.getElementById('".$row->COLUMN_NAME."').focus();\n");
	        break;
	    }
	    fwrite($fp, "\n");
	    fclose($fp);
	    echo 'Built '.$table.' js file.<br>';
	}
	private function gen_model_file($table)
	{
	    $filename = 'application/models/'.$table.'model.php';
	    $fp = fopen($filename, 'w');
	    fwrite($fp, "<?php\n");
	    fwrite($fp, "\n");
	    fwrite($fp, "class ".ucfirst($table)."model extends CI_Model {\n");
	    fwrite($fp, "\n");
	    fwrite($fp, "   function __construct()\n");
	    fwrite($fp, "   {\n");
	    fwrite($fp, "       parent::__construct();\n");
	    fwrite($fp, "   }\n");
	    fwrite($fp, "\n");
	    fwrite($fp, "}\n");
	    fclose($fp);
	    echo 'Built '.$table.' model file.<br>';
	}

	private function gen_controller_file($table)
	{
	    $filename = 'application/controllers/'.$table.'.php';
	    $fp = fopen($filename, 'w');
	    fwrite($fp, "<?php\n");
	    fwrite($fp, "\n");
	    fwrite($fp, "class ".ucfirst($table)." extends CI_Controller {\n");
	    fwrite($fp, "\n");
	    fwrite($fp, "   function __construct()\n");
	    fwrite($fp, "   {\n");
	    fwrite($fp, "       parent::__construct();\n");
	    fwrite($fp, "       \$this->load->model('".$table."model');\n");
	    fwrite($fp, "   }\n");
	    fwrite($fp, "\n");
	    fwrite($fp, "   public function index()\n");
	    fwrite($fp, "   {\n");
	    fwrite($fp, "       \$data = array(\n");
	    fwrite($fp, "           'rows' => \$this->db->get('".$table."'),\n");
	    fwrite($fp, "       );\n");
	    fwrite($fp, "       \$this->load->view('".$table."/index', \$data);\n");
	    fwrite($fp, "   }\n");
	    fwrite($fp, "\n");
	    $this->gen_add_controller($fp, $table);
	    $this->gen_edit_controller($fp, $table);
	    $this->gen_delete_controller($fp, $table);
	    fwrite($fp, "}\n");
	    fclose($fp);
	    echo 'Built '.$table.' controller file.<br>';
	}

	private function gen_add_controller($fp, $table)
	{
	    fwrite($fp, "   public function add()\n");
	    fwrite($fp, "   {\n");
	    fwrite($fp, "       \$this->load->view('".$table."/add');\n");
	    fwrite($fp, "   }\n");
	    fwrite($fp, "\n");
	    fwrite($fp, "   public function add_validate()\n");
	    fwrite($fp, "   {\n");
	    fwrite($fp, "       \$this->load->library('form_validation');\n");
	    $query = $this->column_names($table);
	    foreach ($query->result() as $row) {
	        if ($this->is_auto_increment($table, $row->COLUMN_NAME)) {
	            continue;
	        }
	        $ucname = str_replace('_', ' ', ucfirst($row->COLUMN_NAME));
	        fwrite($fp, "       \$this->form_validation->set_rules('".$row->COLUMN_NAME."', '".$ucname."', 'trim|required');\n");
	    }
	    fwrite($fp, "       if (\$this->form_validation->run() == false) {\n");
	    fwrite($fp, "           \$this->add();\n");
	    fwrite($fp, "       } else {\n");
	    fwrite($fp, "           \$data = array(\n");
	    $query = $this->column_names($table);
	    foreach ($query->result() as $row) {
	        if ($this->is_auto_increment($table, $row->COLUMN_NAME)) {
	            continue;
	        }
	        fwrite($fp, "               '".$row->COLUMN_NAME."' => \$this->input->post('".$row->COLUMN_NAME."'),\n");
	    }
	    fwrite($fp, "           );\n");
	    fwrite($fp, "           \$this->db->insert('".$table."', \$data);\n");
	    fwrite($fp, "           \$this->index();\n");
	    fwrite($fp, "       }\n");
	    fwrite($fp, "   }\n");
	    fwrite($fp, "\n");
	}

	private function gen_edit_controller($fp, $table)
	{
	    $id = $this->id($table);
	    fwrite($fp, "   public function edit(\$".$id.")\n");
	    fwrite($fp, "   {\n");
	    fwrite($fp, "       \$row = \$this->db->get_where('post', array('".$id."' => \$".$id."))->row();\n");
	    fwrite($fp, "       \$data = array(\n");
	    fwrite($fp, "           'row' => \$row,\n");
	    fwrite($fp, "       );\n");
	    fwrite($fp, "       \$this->load->view('".$table."/edit', \$data);\n");
	    fwrite($fp, "   }\n");
	    fwrite($fp, "\n");
	    fwrite($fp, "   public function edit_validate(\$".$id.")\n");
	    fwrite($fp, "   {\n");
	    fwrite($fp, "       \$this->load->library('form_validation');\n");
	    $query = $this->column_names($table);
	    foreach ($query->result() as $row) {
	        if ($this->is_auto_increment($table, $row->COLUMN_NAME)) {
	            continue;
	        }
	        $ucname = str_replace('_', ' ', ucfirst($row->COLUMN_NAME));
	        fwrite($fp, "       \$this->form_validation->set_rules('".$row->COLUMN_NAME."', '".$ucname."', 'trim|required');\n");
	    }
	    fwrite($fp, "       if (\$this->form_validation->run() == false) {\n");
	    fwrite($fp, "           \$this->edit();\n");
	    fwrite($fp, "       } else {\n");
	    fwrite($fp, "           \$data = array(\n");
	    $query = $this->column_names($table);
	    foreach ($query->result() as $row) {
	        if ($this->is_auto_increment($table, $row->COLUMN_NAME)) {
	            continue;
	        }
	        fwrite($fp, "               '".$row->COLUMN_NAME."' => \$this->input->post('".$row->COLUMN_NAME."'),\n");
	    }
	    fwrite($fp, "           );\n");
	    fwrite($fp, "           \$this->db->where('".$id."', \$".$id.");\n");
	    fwrite($fp, "           \$this->db->update('".$table."', \$data);\n");
	    fwrite($fp, "           \$this->index();\n");
	    fwrite($fp, "       }\n");
	    fwrite($fp, "   }\n");
	    fwrite($fp, "\n");
	}

	private function gen_delete_controller($fp, $table)
	{
	    $id = $this->id($table);
	    fwrite($fp, "   public function delete(\$".$id.")\n");
	    fwrite($fp, "   {\n");
	    fwrite($fp, "       \$this->db->delete('post', array('".$id."' => \$".$id."));\n");
	    fwrite($fp, "       \$this->index();\n");
	    fwrite($fp, "   }\n");
	    fwrite($fp, "\n");
	}

	private function gen_index_view_file($table)
	{
	    @mkdir('application/views/'.$table);
	    $filename = 'application/views/'.$table.'/index.php';
	    $fp = fopen($filename, 'w');
	    fwrite($fp, "<head>\n");
	    fwrite($fp, "<link rel=\"stylesheet\" type=\"text/css\" href=\"<?php echo base_url() ?>css/".$table.".css\" />\n");
	    fwrite($fp, "</head>\n");
	    fwrite($fp, "<br />\n");
	    fwrite($fp, "<h3>".ucfirst($table)." Records</h3><br />\n");
	    fwrite($fp, "<h4><a href=\"<?php echo base_url() ?>".$table."/add\">Add a Record</a></h4><br />\n");
	    fwrite($fp, "<table>\n");
	    fwrite($fp, "<tr>\n");
	    $query = $this->column_names($table);
	    foreach ($query->result() as $row) {
	        $ucname = str_replace('_', ' ', ucfirst($row->COLUMN_NAME));
	        fwrite($fp, "<th>".$ucname."</th>\n");
	    }
	    fwrite($fp, "<th>Actions</th>\n");
	    fwrite($fp, "</tr>\n");
	    fwrite($fp, "<?php foreach (\$rows->result() as \$row): ?>\n");
	    fwrite($fp, "<tr>\n");
	    foreach ($query->result() as $row) {
	        fwrite($fp, "<td><?php echo \$row->".$row->COLUMN_NAME."; ?></td>\n");
	    }
	    $id = $this->id($table);
	    $s = "<td><a href=\"<?php echo base_url() ?>".$table."/edit/<?php echo \$row->".$id."; ?>\">Edit</a> ";
	    $s .= "<a href=\"<?php echo base_url() ?>".$table."/delete/<?php echo \$row->".$id."; ?>\">Delete</a></td>\n";
	    fwrite($fp, $s);
	    fwrite($fp, "</tr>\n");
	    fwrite($fp, "<?php endforeach; ?>\n");
	    fwrite($fp, "</table>\n");
	    fclose($fp);
	    echo 'Built '.$table.' index view file.<br>';
	}

	private function gen_add_view_file($table)
	{
	    $filename = 'application/views/'.$table.'/add.php';
	    $fp = fopen($filename, 'w');
	    fwrite($fp, "<head>\n");
	    fwrite($fp, "<link rel=\"stylesheet\" type=\"text/css\" href=\"<?php echo base_url() ?>css/".$table.".css\" />\n");
	    fwrite($fp, "</head>\n");
	    fwrite($fp, "<br />\n");
	    fwrite($fp, "<h3>Add a Record</h3><br />\n");
	    fwrite($fp, "<table>\n");
	    fwrite($fp, "<?php echo form_open('".$table."/add_validate'); ?>\n");
	    $query = $this->column_names($table);
	    foreach ($query->result() as $row) {
	        if ($this->is_auto_increment($table, $row->COLUMN_NAME)) {
	            continue;
	        }
	        $type = '';
	        $name = $row->COLUMN_NAME;
	        $ucname = str_replace('_', ' ', ucfirst($row->COLUMN_NAME));
	        $query = $this->db->query("SHOW FIELDS FROM ".$table." WHERE Field = '".$name."'");
	        foreach ($query->result() as $row) {
	            $a = explode('(', $row->Type);
	            $type = $a[0];
	            break;
	        }
	        switch ($type) {
	            case 'text':
	                $s = "<tr><td align='right'>".$ucname.":</td><td><?php ";
	                $s .= "\$data = array('id' => '".$name."', 'name' => '".$name."'); ";
	                $s .= "echo form_textarea(\$data, set_value('".$name."')); ?></td></tr>\n";
	            break;
	            default:
	                $s = "<tr><td align='right'>".$ucname.":</td><td><?php ";
	                $s .= "\$data = array('id' => '".$name."', 'name' => '".$name."'); ";
	                $s .= "echo form_input(\$data, set_value('".$name."')); ?></td></tr>\n";
	            break;
	        }
	        fwrite($fp, $s);
	    }
	    fwrite($fp, "<tr><td align='right'> </td><td><?php echo form_submit('submit', 'Add'); ?></td></tr>\n");
	    fwrite($fp, "<?php echo form_close(); ?>\n");
	    fwrite($fp, "</table>\n");
	    fwrite($fp, "<?php echo validation_errors('<p class=\"error\">'); ?>\n");
	    fwrite($fp, "<script type=\"text/javascript\" src=\"<?php echo base_url() ?>js/".$table.".js\"></script>\n");
	    fclose($fp);
	    echo 'Built '.$table.' add view file.<br>';
	}

	private function gen_edit_view_file($table)
	{
	    $id = $this->id($table);
	    $filename = 'application/views/'.$table.'/edit.php';
	    $fp = fopen($filename, 'w');
	    fwrite($fp, "<head>\n");
	    fwrite($fp, "<link rel=\"stylesheet\" type=\"text/css\" href=\"<?php echo base_url() ?>css/".$table.".css\" />\n");
	    fwrite($fp, "</head>\n");
	    fwrite($fp, "<br />\n");
	    fwrite($fp, "<h3>Edit a Record</h3><br />\n");
	    fwrite($fp, "<table>\n");
	    fwrite($fp, "<?php echo form_open('".$table."/edit_validate/'.\$row->".$id."); ?>\n");
	    $query = $this->column_names($table);
	    foreach ($query->result() as $row) {
	        if ($this->is_auto_increment($table, $row->COLUMN_NAME)) {
	            continue;
	        }
	        $type = '';
	        $value = '';
	        $name = $row->COLUMN_NAME;
	        $ucname = str_replace('_', ' ', ucfirst($row->COLUMN_NAME));
	        $query = $this->db->query("SHOW FIELDS FROM ".$table." WHERE Field = '".$name."'");
	        foreach ($query->result() as $row) {
	            $a = explode('(', $row->Type);
	            $type = $a[0];
	            break;
	        }
	        switch ($type) {
	            case 'text':
	                $s = "<tr><td align='right'>".$ucname.":</td><td><?php ";
	                $s .= "\$data = array('id' => '".$name."', 'name' => '".$name."', 'value' => \$row->".$row->Field."); ";
	                $s .= "echo form_textarea(\$data, set_value('".$name."')); ?></td></tr>\n";
	            break;
	            default:
	                $s = "<tr><td align='right'>".$ucname.":</td><td><?php ";
	                $s .= "\$data = array('id' => '".$name."', 'name' => '".$name."', 'value' => \$row->".$row->Field."); ";
	                $s .= "echo form_input(\$data, set_value('".$name."')); ?></td></tr>\n";
	            break;
	        }
	        fwrite($fp, $s);
	    }
	    fwrite($fp, "<tr><td align='right'> </td><td><?php echo form_submit('submit', 'Update'); ?></td></tr>\n");
	    fwrite($fp, "<?php echo form_close(); ?>\n");
	    fwrite($fp, "</table>\n");
	    fwrite($fp, "<?php echo validation_errors('<p class=\"error\">'); ?>\n");
	    fwrite($fp, "<script type=\"text/javascript\" src=\"<?php echo base_url() ?>js/".$table.".js\"></script>\n");
	    fclose($fp);
	    echo 'Built '.$table.' edit view file.<br>';
	}

}

/* End of file */
