<?php
/**
 * Created by PhpStorm.
 * User: envy06
 * Date: 20.08.2010
 * Time: 09:07:47
 * To change this template use File | Settings | File Templates.
 */
    define('BASEPATH', 'system/');
class sitegrinder {
    var $currentURL = '';
    var $currentContent = '';

    /**
     * Konstruktor
     * @return void
     */
    function sitegrinder(){

    }

    /**
     * Setzt die URL, aus der SiteGrinder Informationen ziehen soll.
     * @param string $url
     * @return boolean
     */
    function set_url($url){
        $this->currentURL = $url;
        $this->currentContent = file_get_contents($url);
        if(!$this->currentContent) return FALSE;
        return TRUE;
    }

    /**
     * Wendet eine Regular Expression auf den Inhalt der geholten Seite an.
     * @param string $pattern
     * @return array
     */
    function find($pattern){
        $response = array();
        preg_match($pattern, $this->currentContent, $response);
        return $response;
    }
}

class ciconfig {
    var $currentConfig = '';
    var $configData = '';

    /**
     * Konstruktor
     * @return void
     */
    function ciconfig(){

    }

    /**
     * Die zu bearbeitende Config-Datei. Beispiel : database
     * @param string $configName
     * @return void
     */
    function select($configName){
        $this->currentConfig = 'system/application/config/'.$configName.'.php';
        $this->configData = @file_get_contents($this->currentConfig);
    }

    /**
     * Nachdem die Config geladen wurde können hiermit einzelne Parameter aus der Config gelesen werden.
     * Beispiel: default|hostname oder index_page
     * @param string $parameter
     * @return mixed
     */
    function get($parameter){
        $match = array();
        $regex = '|\[\''.str_replace('|', '\']\[\'', $parameter).'\'].+= (.+?);|m';
        preg_match($regex, $this->configData, $match);
        $var = $match[1];
        if(substr($var, 0, 1) == '\'') $var = (string)substr($var, 1, -1);
        if(substr($var, 0, 1) == '"') $var = (string)substr($var, 1, -1);
        return $var;
    }

    /**
     * Überschreibt den Wert eines Parameters.
     * @param string $parameter
     * @param string $value
     * @return void
     */
    function set($parameter, $value){
        if(is_string($value)) $value = '\''.$value.'\'';
        if(is_array($value)){
            $values = array();
            foreach($value as $item){
                if(is_string($item)) $values[] = '\''.$item.'\''; else $values[] = $item;
            }
            $value = 'array('.implode(',',$values).')';
            if($value == 'array(\'\')') $value = 'array()';
        }
        $regex = '|(\[\''.str_replace('|', '\']\[\'', $parameter).'\'].+= )(.+?);|m';
        $this->configData = preg_replace($regex, '$1'.$value.';', $this->configData);
    }

    /**
     * Speichert die geänderte Config File zurück.
     * @return void
     */
    function save(){
        file_put_contents($this->currentConfig, $this->configData);
    }
}

    function rrmdir($dir) {
   if (is_dir($dir)) {
     $objects = scandir($dir);
     foreach ($objects as $object) {
       if ($object != "." && $object != "..") {
         if (filetype($dir."/".$object) == "dir") rrmdir($dir."/".$object); else unlink($dir."/".$object);
       }
     }
     reset($objects);
     rmdir($dir);
   }
 }

function scandir_recursive($dir){
    $output = array();
    if(substr($dir,-1) != '/') $dir .= '/';
    $files = scandir($dir);
    foreach($files as $file){
        if(is_dir($dir.$file) && $file != '.' && $file != '..'){
            $output = array_merge($output, scandir_recursive($dir.$file));
        }
        else if($file != '.' && $file != '..') $output[] = $dir.$file;
    }
    return $output;
}
    class pMySQLi extends mysqli
{
    var $connected = false;

	/**
	 * @var Tabellen-Prefix, der vor Tabellennamen gesetzt werden soll, um schnell auch auf anderen Servern zu arbeiten.
	 */
	public $prefix = "tbl_";

	/**
	 * Konstruktor
	 *
	 * @param string $host Hostname des MySQL Servers
	 * @param string $user Username des MySQL Servers
	 * @param string $pass Passwort des MySQL Servers
	 * @param string $db Name der zu verwendenden Datenbank
	 */
	public function __construct($host, $user, $pass, $db)
	{
		parent::__construct($host, $user, $pass, $db);
		if ( ! $this->connect_error)
		{
            $this->connected = TRUE;
        }
	}

	/**
	 * Maskiert die Sonderzeichen eines Strings für die MySQL-Übergabe.
	 * @param string $string
	 * @return string
	 */
	public function mask($string)
	{
		if(get_magic_quotes_gpc()) $string = stripslashes($string);
		return $this->real_escape_string($string);
	}

	public function query($sqlQuery)
	{
		$result = parent::query($sqlQuery);
		echo $this->sql_error;
		return $result;
	}

	/**
	 * Fährt eine Anfrage an die Datenbank und gibt die Insert-ID zurück. (Nicht zur Datenabfrage gedacht).
	 * @param string $sqlQuery
	 * @return integer|false
	 */
	public function queryToId($sqlQuery)
	{
		$this->query($sqlQuery);
		if(!$this->error) return $this->insert_id; else return false;
	}

	/**
	 * Fährt eine Anfrage an die Datenbank und gibt alle Zeilen zurück.
	 * @param string $sqlQuery
	 * @return array|false
	 */
	public function queryAll($sqlQuery)
	{
		$result = $this->query($sqlQuery);
		if($result)
		{
			$ausgabe = array();
			while($row = $result->fetch_assoc())
			{
				$ausgabe[] = $row;
			}
			return $ausgabe;
		}
		else return array();
	}

	/**
	 * Fährt eine Anfrage an die Datenbank und gibt eine Zeile zurück.
	 * @param string $sqlQuery
	 * @return array|false Assoziatives Array
	 */
	public function queryRow($sqlQuery)
	{
		$result = $this->query($sqlQuery);
		if($result)
		{
			return $result->fetch_assoc();
		}
		else return false;
	}

	/**
	 * Fährt eine Anfrage an die Datenbank und gibt einen Wert zurück.
	 * @param string $sqlQuery
	 * @return mixed|false
	 */
	public function queryValue($sqlQuery)
	{
		$result = $this->query($sqlQuery);
		if($result)
		{
			$row = $result->fetch_array();
			return $row[0];
		}
		else return false;
	}

	/**
	 * Erzeugt einen String mit SET-Werten für MySQL.
	 * Strings werden automatisch maskiert.
	 * @param array $array Assoziatives Array. Keys werden als Datenbank-Felder genutzt.
	 * @return string
	 */
	function makeSqlSetString($array)
	{
		$ausgabe = "";

		if(is_array($array))
		{
			foreach($array as $key=>$wert)
			{
				if($ausgabe != "") $ausgabe .= ", ";
				if(is_int($wert))
				{
					$ausgabe .= $key."=".$wert;
				}
				else
				{
					$ausgabe .= $key."='".$this->mask($wert)."'";
				}
			}
		}

		return $ausgabe;
	}

	/**
	 * Erzeugt einen String für die Dateneingabe in die Datenbank.
	 * Strings werden automatisch maskiert.
	 * Hat die Fähigkeit fehlende Werte zu interpolieren, wenn Werte im übergebenen Array wiederum Arrays sind.
	 * @param array $array Assoziatives Array
	 * @return string (SPALTEN) VALUES (WERTE)
	 */
	function makeSqlValueString($array)
	{
		$ausgabe = "";
		$left = array();
		$right = array();
		$maxLength = 0;

		//Erstmal vorbereiten.
		foreach($array as $key => $value)
		{
			$left[] = $key;
			if(is_array($value))
			{
				if(count($value)-1 > $maxLength) $maxLength = count($value)-1;
			}
			else
			{
				$array[$key] = array($value);
			}
		}

		//Jetzt die Wertepaare basteln.
		for($i = 0;$i <= $maxLength;$i++)
		{
			$work = array();
			foreach($array as $key => $value)
			{
				if(count($array[$key])-1 < $i)
				{
					$wert = $array[$key][count($array[$key])-1];
				}
				else
				{
					$wert = $array[$key][$i];
				}

				if(is_int($wert))
				{
					$work[] = $wert;
				}
				else
				{
					$work[] = "'".$this->mask($wert)."'";
				}
			}
			$right[] = implode(", ", $work);
		}

		$ausgabe = "(".implode(",", $left).") VALUES (".implode("), (", $right).")";

		return $ausgabe;
	}

	/**
	 * Erzeugt einen Value-Block aus einem Array.
	 * Strings werden automatisch Maskiert.
	 * Arrays oder Objekte werden ignoriert.
	 * @param array $array Assoziatives Array. Keys werden als Datenbank-Felder genutzt.
	 * @return string
	 */
	function makeSqlValueString_old($array)
	{
		$ausgabe = "";
		$part1 = "";
		$part2 = "";

		if(is_array($array))
		{
			foreach($array as $key=>$wert)
			{
				if($part1 != "")
				{
					$part1 .= ", ";
					$part2 .= ", ";
				}
				$part1 .= $key;


				if(is_int($wert))
				{
					$part2 .= $wert;
				}
				else if(is_string($wert))
				{
					$part2 .= "'".$this->mask($wert)."'";
				}
			}

			$ausgabe = "($part1) VALUES ($part2)";
		}

		return $ausgabe;
	}
}
    class modelcreator {
    var $sql;

    function modelcreator(){
        global $sql;
        $this->sql = $sql;
    }

    /**
     * Erzeugt ein neues Datenbank-Model anhand einer MySQL Tabelle.
     * @param string $tableName
     * @param string $removePrefix
     * @return void
     */
    function createModel($tableName, $removePrefix = ''){
        $modelName = str_replace($removePrefix, '', $tableName);
        $columns = $this->sql->queryAll('SHOW COLUMNS FROM '.$tableName);
        $tableFields = array('*');
        $writableFields = array();
        foreach($columns as $item){
            $tableFields[] = $item['Field'];
            if( ! $item['Key']) $writableFields[] = $item['Field'];
        }
        $source = '<?php
/**
 * '.$modelName.' Model
 * @autor FireStarter for CodeIgniter
 * @version 1.21
 */
class '.$modelName.' extends Model{
    /**
     * @var string $table Name der vom Controller verwendeten MySQL-Tabelle.
     */
    var $table = \''.$tableName.'\';
    /**
     * @var array $table_fields Array aller Tabellen-Felder, die lesbar sind.
     */
    var $table_fields = array(\''.implode('\', \'', $tableFields).'\');
    /**
     * @var array $table_writable_fields Array aller Tabellen-Felder die beschreibbar sind.
     */
    var $table_writable_fields = array(\''.implode('\', \'', $writableFields).'\');

    /**
     *  Konstruktor
     */
    function '.$modelName.'(){
        parent::Model();
    }

    /**
     * Checkt einen Array an Feldern gegen den Array mit erlaubten Feldern.
     * Übergeben wird entweder ein einfaches Array mit Datenbankfeldern als Werte, oder ein Key/Value Array mit Datenbankfeldern als Keys.
     * @param array $fields Zu prüfende Felder
     * @param array $fieldset Felderliste, gegen die geprüft wird.
     * @return array
     */
    function _checkFields($fields, $fieldSet){
        $return = array();
        foreach($fields as $key => $value){
            if($key === intVal($key)){
                //Keine Key/Value Zuordnung.
                if(in_array($value, $fieldSet) AND ! in_array($value, $return)) $return[] = $value;
            } else {
                //Key/Value Zuordnung
                if(in_array($key, $fieldSet) AND ! isset($return[$key])) $return[$key] = $value;
            }
        }
        return $return;
    }

    /**
     * Fügt einen neuen Eintrag in die Datenbank ein.
     * @param array $parameters
     * @return integer|false ID des neuen Eintrags.
     */
    function add($parameters){
        $insert = $this->_checkFields($parameters, $this->table_writable_fields);
        $query = $this->db->insert_string($this->table, $insert);
        $this->db->query($query);
        return $this->db->insert_id();
    }

    /**
     * Entfernt einen Eintrag aus der Datenbank
     * ! Richte MySQL-Trigger für weitere Operationen ein !
     * @param integer $ID
     * @return boolean
     */
    function remove($ID){
        $ID = (int)$ID;
        $query = \'DELETE FROM \'.$this->table.\' WHERE ID = \'.$ID.\' LIMIT 1;\';
        $this->db->query($query);
        if($this->db->affected_rows()) return TRUE;
        return FALSE;
    }

    /**
     * Ändert einen oder mehrere Einträge in der Datenbank.
     * @param integer|array|string $ID Eine ID, mehrere IDs im Array, oder * für alle Einträge.
     * @param array $parameters
     * @return boolean
     */
    function set($ID, $parameters){
        if($ID == (int)$ID) {
            $where = \'ID = \'.(int)$ID.\' LIMIT 1;\';
        } else if(is_array($ID)){
            foreach($ID as $key => $value){
                $ID[$key] = (int)$value;
            }
            $where = \'ID IN(\'.implode(\',\',$ID).\');\';
        } else {
            $where = \';\';
        }
        $update = $this->_checkFields($parameters, $this->table_writable_fields);
        $query = $this->db->update_string($this->table, $update, $where);
        $this->db->query($query);
        if($this->db->affected_rows()) return TRUE;
        return FALSE;
    }

    /**
     * Gibt einen oder mehrere Einträge aus der Datenbank zurück.
     * @param integer|array|string $ID Eine ID, mehrere IDs im Array, oder * für alle Einträge (nicht empfohlen).
     * @param string $felder Zu selektierende Datenbankfelder.
     * @param string $filter Dient als Erweiterung des WHERE Bereichs, sowie für ORDER und LIMIT (LIMIT wird bei einer einzelnen ID automatisch gesetzt).
     * @return array|false
     */
    function get($ID, $fields, $filter = NULL){
        $suffix = \'\';
        if($ID === intVal($ID)) {
            $where = \'WHERE ID = \'.(int)$ID;
            $suffix = \' LIMIT 1;\';
        } else if(is_array($ID)){
            foreach($ID as $key => $value){
                $ID[$key] = (int)$value;
            }
            $where = \'WHERE ID IN(\'.implode(\',\',$ID).\')\';
        } else {
            $where = \'WHERE \';
            if(! $filter) $where .= \'TRUE\';
        }
        if($filter) $where .= \' \'.$filter;
        $where .= $suffix.\';\';
        $sqlFields = $this->_checkFields(explode(\',\',$fields), $this->table_fields);
        $query = \'SELECT \'.implode(\',\',$sqlFields).\' FROM \'.$this->table.\' \'.$where;
        $result = $this->db->query($query);
        if($result){
            $resData = $result->result_array();
            if(count($sqlFields) == 1 && count($resData) && $sqlFields[0] != \'*\') return $resData[0][$sqlFields[0]]; else return $resData;
        }
        return FALSE;
    }

    /**
     * Führt ein get() aus und konvertiert die Rückgabe in ein Key/Value Array, wobei $key als Key-Feld verwendet wird.
     * Dies ist hilfreich, wenn man zum Beispiel die id der Tabelle als Key verwendet und so mit $ergebnis[ID] direkt auf die Daten zugreifen kann.
     * @param string $key Name des Datenbankfeldes, das als Array Key benutzt werden soll.
     * @param integer|array|string $ID Eine ID, mehrere IDs im Array, oder * für alle Einträge (nicht empfohlen).
     * @param string $felder Zu selektierende Datenbankfelder.
     * @param string $filter Dient als Erweiterung des WHERE Bereichs, sowie für ORDER und LIMIT (LIMIT wird bei einer einzelnen ID automatisch gesetzt).
     * @return array|false
     */
    function get_keyed($key, $ID, $fields, $filter = NULL){
        $data = $this->get($ID, $fields, $filter);
        if( ! $data) return FALSE;
        if( ! isset($data[0][$key])) return FALSE;
        $result = array();
        foreach($data as $item){
            $result[$item[$key]] = $item;
        }
        return $result;
    }

}';
        file_put_contents('system/application/models/'.$modelName.'.php', $source);
        chmod('system/application/models/'.$modelName.'.php', 0777);
    }
}
    class controllercreator {
    var $source = '';
    var $path = '';
    var $className = '';
    var $functionName = '';
    var $marks = array(
        'conscructor' => FALSE,
        'function' => FALSE
    );

    /**
     * Parsed einen FCML Block und erzeugt Controller.
     * @param string $fcml
     * @return void
     */
    function create($fcml){
        $commands = explode("\n", $fcml);
        foreach($commands as $c){
            $c = trim($c);
            if( ! $c) continue;
            switch(substr($c, 0, 1)){
                case '+': //Neue Controller
                    if($this->marks['function']){
                        $this->source .= '    }
}';
                        file_put_contents('system/application/controllers/'.$this->path.'.php', $this->source);
                    }
                    $this->path = substr($c, 1);
                    $this->className = str_replace(dirname($this->path), '', $this->path);
                    $dirs = explode('/', dirname($this->path));
                    $dirchain = '';
                    foreach($dirs as $dir){
                        $dirchain .= $dir.'/';
                        echo $dirchain."\n";
                        if( ! file_exists('system/application/controllers/'.$dirchain)) mkdir('system/application/controllers/'.$dirchain);
                    }
                    $this->marks = array(
                        'conscructor' => FALSE,
                        'function' => FALSE
                    );
                    $this->source = '<?
/**
 * @autor Firestarter for CodeIgniter
 * @version 1.0
 */
class '.$this->className.' extends Controller{
';
                break;

                case '*': //Konstruktor
                    if( ! $this->marks['constructor']){
                        $this->marks['constructor'] = TRUE;
                        $this->source .= '
    /**
     * Constructor
     * @return void
     */
    function '.$this->className.'(){
        parent::Controller();
    }
';
                    }
                break;

                case '-': //Funktion
                    if($this->marks['function']){
                        $this->source .= '
    }
';
                    }

                    $this->functionName = substr($c, 1);
                    $this->marks['function'] = true;
                    $this->source .= '
    /**
     * DESCRIPTION
     * @return void
     */
    function '.$this->functionName.'(){
';
                break;

                case 'm': //Model-Loader
                    if($this->marks['function']){
                        $models = explode(',', substr($c, 2, -1));
                        $this->source .= '        //Loading Models
';
                        foreach($models as $model){
                            $this->source .= '        $this->load->model(\''.$model.'\');
';
                        }
                        $this->source .= '        //--------------------------------------------
';
                    }
                break;

                case 'a': //AJAX-Block
                    if($this->marks['function']){
                        $ajaxcommands = explode(',', substr($c, 2, -1));
                        $this->source .= '        //AJAX Command Block
        if($this->uri->segment(3) == \'ajax\'){
            switch($this->uri->segment(4)){
';
                        foreach($ajaxcommands as $command){
                            $this->source .= '                case \''.$command.'\':
                    //CODE HERE
                break;

';
                        }
                        $this->source .= '            }
            return TRUE;
        }
';
                    }
                break;

                case 'v': //View-Loader
                    if($this->marks['function']){
                        $this->source .= '
        //Loading Views
';
                       $views = explode(',', substr($c, 2, -1));
                        foreach($views as $view){
                            $this->source .= '        $this->load->view(\''.$view.'\');
';
                        }
                        $this->source .= '        //--------------------------------------------
';
                    }
                break;
                case 'c': //Code-Block
                    $this->source .= '
        //--------------------------------------------
        //CUSTOM CODE BLOCK
        //--------------------------------------------


        //--------------------------------------------
';
            }
        }
        if($this->marks['function']){
            $this->source .= '    }
}';
            echo 'system/application/controllers/'.$this->path.'.php';
            file_put_contents('system/application/controllers/'.$this->path.'.php', $this->source);
            chmod('system/application/controllers/'.$this->path.'.php', 0777);
        }
    }
}

    $ciInstalled = FALSE;
    $ciDBAccess = FALSE;
    if(file_exists('system/')) $ciInstalled = true;
    $sg = new sitegrinder();
    $cc = new ciconfig();
    $ccr = new controllercreator();

    $cc->select('database');
    $dbLoginData = array(
        'hostname' => $cc->get('default|hostname'),
        'username' => $cc->get('default|username'),
        'password' => $cc->get('default|password'),
        'database' => $cc->get('default|database')
    );
if($dbLoginData['database']){
    $sql = new pMySQLi($dbLoginData['hostname'], $dbLoginData['username'], $dbLoginData['password'], $dbLoginData['database']);
    if($sql->connected) $ciDBAccess = TRUE;

    $mc = new modelcreator();
}

    $area = $_GET['a'];
    $ajax = $_GET['ajax'];

    switch($area){
        case 'install':
            $sg->set_url('http://codeigniter.com/downloads/');
            $match = $sg->find('/CodeIgniter is currently at Version (.+?).<\/p>/');
            $ciVersion = $match[1];
        break;
    }

    if($ajax){
        switch($ajax){
            case 'download':
                file_put_contents('ci.zip', file_get_contents('http://codeigniter.com/download.php'));
            break;

            case 'extract':
                if(@filesize('ci.zip')){
                    $zip = new ZipArchive();
                    $res = $zip->open('ci.zip');
                    if($res === true){
                        $file = $zip->getNameIndex(0);
                        $cutlen = strlen(substr($file, 0, strpos($file, '/')+1));
                        for($i=1; $i<$zip->numFiles;$i++){
                            $file = $zip->getNameIndex($i);
                            echo 'extracting '.$file."\n";
                            $outfile = substr($file,$cutlen);
                            $folder = dirname($outfile);
                            if($outfile != '' && !@filesize($outfile)){
                                if(!is_dir($folder)){
                                    mkdir($folder);
                                    chmod($folder, 0777);
                                }
                                $fread = $zip->getStream($file);
                                $fwrite = fopen($outfile, 'w');
                                while(!feof($fread)){
                                    fwrite($fwrite, fread($fread, 2));
                                }
                                fclose($fwrite);
                                fclose($fread);
                                chmod($outfile, 0777);
                            }
                        }
                    } else echo 'no res';
                    $zip->close();
                } else echo 'no zipfile';
                if(isset($_GET['remdoc'])) rrmdir('user_guide');
                @unlink('ci.zip');
            break;

            case 'save_db':
                $cc->select('database');
                $cc->set('default|hostname', $_POST['hostname']);
                $cc->set('default|username', $_POST['username']);
                $cc->set('default|password', $_POST['password']);
                $cc->set('default|database', $_POST['database']);
                $cc->set('default|dbdriver', $_POST['driver']);
                $cc->save();
            break;

            case 'save_basics':
                $cc->select('config');
                $cc->set('base_url', $_POST['baseURL']);
                $cc->set('url_suffix', $_POST['urlSuffix']);
                $cc->save();
                $cc->select('routes');
                $cc->set('default_controller', $_POST['defaultContr']);
                $cc->save();
            break;

            case 'save_autoload':
                $cc->select('autoload');
                $cc->set('libraries', explode(',', $_POST['libraries']));
                $cc->set('helper', explode(',', $_POST['helpers']));
                $cc->set('model', explode(',', $_POST['models']));
                $cc->set('plugin', explode(',', $_POST['plugins']));
                $cc->save();
            break;

            case 'createModels':
                $models = explode(',', $_POST['models']);
                $prefix = $_POST['remPrf'];
                foreach($models as $model){
                    $mc->createModel($model, $prefix);
                }
            break;

            case 'create_controllers':
                $ccr->create($_POST['fcml']);
            break;

            case 'scan_controllers':
                $files = scandir_recursive('system/application/controllers');
                $views = array();
                foreach($files as $file){
                    if(substr($file,-3) == 'php'){
                        $filedata = file_get_contents($file);
                        $match = array();
                        preg_match_all('|\$this->load->view\(\'(.+?)\'\)|', $filedata, $match);
                        foreach($match[1] as $item){
                            if(substr_count($item, '.') == 0) $item .= '.php';
                            if( ! in_array($item, $views)) $views[] = $item;
                        }
                    }
                }
                echo json_encode($views);
            break;

            case 'create_views':
                $views = explode(',', $_POST['views']);
                foreach($views as $view){
                    file_put_contents('system/application/views/'.$view, 'EMPTY');
                }
            break;

            case 'drop_framework':
                $fwID = $_POST['fid'];
                switch($fwID){
                    case 1:
                        //JQuery
                        $url = 'http://code.jquery.com/jquery-1.4.2.min.js';
                        break;
                    case 2:
                        //Prototype
                        $url = 'http://prototypejs.org/assets/2009/8/31/prototype.js';
                        break;
                    case 3:
                        //MooTools
                        $url = 'http://mootools.net/download/get/mootools-1.2.5-core-yc.js';
                        break;
                    case 4:
                        //Cufon
                        $url = 'http://cufon.shoqolate.com/js/cufon-yui.js';
                }

                $filename = basename($url);
                if( ! is_dir('lib/')) mkdir('lib');
                if( ! is_dir('lib/js/')) mkdir('lib/js/');
                file_put_contents('lib/js/'.$filename, file_get_contents($url));
            break;

            case 'drop_icons':
                $icID = $_POST['icid'];
                switch($icID){
                    case 1:
                        //Silk Iconset
                        $url = 'http://famfamfam.com/lab/icons/silk/famfamfam_silk_icons_v013.zip';
                        $setname = 'silk';
                    break;
                    case 2:
                        //Flag Iconset
                        $url = 'http://famfamfam.com/lab/icons/flags/famfamfam_flag_icons.zip';
                        $setname = 'flags';
                }

                $filename = basename($url);
                if( ! is_dir('lib/')) mkdir('lib');
                if( ! is_dir('lib/css/')) mkdir('lib/css/');
                if( ! is_dir('lib/css/icons/')) mkdir('lib/css/icons/');
                if( ! is_dir('lib/css/icons/'.$setname.'/')) mkdir('lib/css/icons/'.$setname.'/');
                file_put_contents('lib/css/icons/'.$setname.'/'.$filename, file_get_contents($url));
                if(@filesize('lib/css/icons/'.$setname.'/'.$filename)){
                    $zip = new ZipArchive();
                    $res = $zip->open('lib/css/icons/'.$setname.'/'.$filename);
                    if($res === true){
                        for($i=3; $i<$zip->numFiles;$i++){
                            $file = $zip->getNameIndex($i);
                            if(substr(basename($file),0,1) != '.'){
                                $outfile = 'lib/css/icons/'.$setname.'/'.basename($file);
                                $folder = dirname($outfile);
                                if($outfile != '' && !@filesize($outfile)){
                                    if(!is_dir($folder)){
                                        mkdir($folder);
                                        chmod($folder, 0777);
                                    }
                                    $fread = $zip->getStream($file);
                                    $fwrite = fopen($outfile, 'w');
                                    while(!feof($fread)){
                                        fwrite($fwrite, fread($fread, 2));
                                    }
                                    fclose($fwrite);
                                    fclose($fread);
                                    chmod($outfile, 0777);
                                }
                            }
                        }
                    } else echo 'no res';
                    $zip->close();
                } else echo 'no zipfile';
                @unlink('lib/css/icons/'.$setname.'/'.$filename);

                switch($icID){
                    case 1:
                        //Silk
                        $buffer = '/*
    This CSS File makes the FamFamFam Silk Icon Set accessible via CSS Classes.
    Generated with Firestarter for CodeIgniter from http://parastudios.de
*/
.icon{background: transparent 0 2px no-repeat}
';
                        $dir = scandir('lib/css/icons/silk/');
                        foreach($dir as $file){
                            if(is_file('lib/css/icons/silk/'.$file)){
                                $buffer .= '.silk_'.str_replace(' ', '_', strtolower(substr($file,0,-4))).'{url(silk/'.$file.')}'."\n";
                            }
                        }
                        $f = fopen('lib/css/icons/silk.css', 'w');
                        fwrite($f, $buffer);
                        fclose($f);
                    break;
                    case 2:
                        //Flags
                        $buffer = '/*
    This CSS File makes the FamFamFam Flag Icon Set accessible via CSS Classes.
    Generated with Firestarter for CodeIgniter from http://parastudios.de
*/
.icon{background: transparent 0 2px no-repeat}
';
                        $dir = scandir('lib/css/icons/flags/');
                        foreach($dir as $file){
                            if(is_file('lib/css/icons/flags/'.$file)){
                                $buffer .= '.flag_'.str_replace(' ', '_', strtolower(substr($file,0,-4))).'_'.strtolower(substr($file,-3,3)).'{url(flags/'.$file.')}'."\n";
                            }
                        }
                        $f = fopen('lib/css/icons/flags.css', 'w');
                        fwrite($f, $buffer);
                        fclose($f);
                    break;
                }
            break;

            case 'htaccess':
                $elements = explode(',',$_POST['elements']);
                $buffer = '';
                if(in_array('urlrewrite', $elements)){
                    $buffer .= 'RewriteEngine on
RewriteBase /

RewriteCond %{REQUEST_FILENAME} !-f
RewriteCond %{REQUEST_FILENAME} !-d
RewriteRule (.*) index.php/$1 [L]

';
                }

                if(in_array('latestIE', $elements)){
                    $buffer .= '# Force the latest IE version, in various cases when it may fall back to IE7 mode
#  github.com/rails/rails/commit/123eb25#commitcomment-118920
# Use ChromeFrame if it\'s installed for a better experience for the poor IE folk
<IfModule mod_setenvif.c>
  <IfModule mod_headers.c>
    BrowserMatch MSIE ie
    Header set X-UA-Compatible "IE=Edge,chrome=1" env=ie
  </IfModule>
</IfModule>

';
                }

                if(in_array('crossAJAX', $elements)){
                    $buffer .= '# hacks.mozilla.org/2009/07/cross-site-xmlhttprequest-with-cors/
<IfModule mod_headers.c>
  Header set Access-Control-Allow-Origin "*"
</IfModule>

';
                }

                if(in_array('addmimetypes', $elements)){
                    $buffer .= '# video
AddType video/ogg  ogg ogv
AddType video/mp4  mp4
AddType video/webm webm

# Proper svg serving. Required for svg webfonts on iPad
#   twitter.com/FontSquirrel/status/14855840545
AddType image/svg+xml                 svg svgz

# webfonts
AddType application/vnd.ms-fontobject eot
AddType font/ttf                      ttf
AddType font/otf                      otf
AddType font/x-woff                   woff

AddType text/cache-manifest           manifest

';
                }

                if(in_array('concatenation', $elements)){
                    $buffer .= '# allow concatenation from within specific js and css files

# e.g. Inside of script.combined.js you could have
#   <!--#include file="jquery-1.4.2.js" -->
#   <!--#include file="jquery.idletimer.js" -->
# and they would be included into this single file

# this is not in use in the boilerplate as it stands. you may
#   choose to name your files in this way for this advantage
#   or concatenate and minify them manually.
# Disabled by default.

# <FilesMatch "\.combined\.(js|css)$">
#         Options +IncludesNOEXEC
#         SetOutputFilter INCLUDES
# </FilesMatch>

';
                }
                    if(in_array('gzip', $elements)){
                        $buffer .= '# gzip compression.
<IfModule mod_deflate.c>

# html, xml, css, and js:
  AddOutputFilterByType DEFLATE text/html text/plain text/xml text/css application/x-javascript text/javascript application/javascript application/json

# webfonts and svg:
  <FilesMatch "\.(ttf|otf|eot|svg)$" >
    SetOutputFilter DEFLATE
  </FilesMatch>
</IfModule>

';
                    }

                    if(in_array('expireheaders', $elements)){
                        $buffer .= '# these are pretty far-future expires headers
# they assume you control versioning with cachebusting query params like
#   <script src="application.js?20100608">
# additionally, consider that outdated proxies may miscache
#   www.stevesouders.com/blog/2008/08/23/revving-filenames-dont-use-querystring/

# if you don\'t use filenames to version, lower the css and js to something like
#   "access plus 1 week" or so

<IfModule mod_expires.c>
  Header set cache-control: public
  ExpiresActive on

# Perhaps better to whitelist expires rules? Perhaps.
  ExpiresDefault                          "access plus 1 month"

# cache.manifest needs re-reqeusts in FF 3.6 (thx Remy ~Introducing HTML5)
  ExpiresByType text/cache-manifest       "access plus 0 seconds"

# your document html
  ExpiresByType text/html                  "access"

# rss feed
  ExpiresByType application/rss+xml       "access plus 1 hour"

# favicon (cannot be renamed)
  ExpiresByType image/vnd.microsoft.icon  "access plus 1 week"

# media: images, video, audio
  ExpiresByType image/png                 "access plus 1 month"
  ExpiresByType image/jpg                 "access plus 1 month"
  ExpiresByType image/jpeg                "access plus 1 month"
  ExpiresByType video/ogg                 "access plus 1 month"
  ExpiresByType audio/ogg                 "access plus 1 month"
  ExpiresByType video/mp4                 "access plus 1 month"

# webfonts
  ExpiresByType font/ttf                  "access plus 1 month"
  ExpiresByType font/woff                 "access plus 1 month"
  ExpiresByType image/svg+xml             "access plus 1 month"

# css and javascript
  ExpiresByType text/css                  "access plus 1 month"
  ExpiresByType application/javascript    "access plus 1 month"
  ExpiresByType text/javascript           "access plus 1 month"
</IfModule>
# Since we\'re sending far-future expires, we don\'t need ETags for
# static content.
#   developer.yahoo.com/performance/rules.html#etags
FileETag None

';
                    }

                    if(in_array('forwarddomain', $elements)){
                        if( ! in_array('urlrewrite', $elements)) $buffer .= 'RewriteEngine On
';

                        $buffer .= 'RewriteCond %{HTTP_HOST} ^www\.(.+)$ [NC]
RewriteRule ^(.*)$ http://%1/$1 [R=301,L]
Options -MultiViews

';
                    }

                    if(in_array('utf8', $elements)){
                        $buffer .= '# use utf-8 encoding for anything served text/plain or text/html
AddDefaultCharset utf-8
# force utf-8 for a number of file formats
AddCharset utf-8 .html .css .js .xml .json .rss

';
                    }
                    $f = fopen('.htaccess', 'w');
                    fwrite($f, $buffer);
                    fclose($f);
                    break;

                    case 'drop_misc':
                        switch((int)$_POST['icid']){
                            case 1:
                                //crossdomain.xml
                                $f = fopen('crossdomain.xml', 'w');
                                fwrite($f, '<?xml version="1.0"?>
<!DOCTYPE cross-domain-policy SYSTEM "http://www.macromedia.com/xml/dtds/cross-domain-policy.dtd">
<cross-domain-policy>
    <!--
        If you host a crossdomain.xml file with allow-access-from domain=“*”
        and don’t understand all of the points described here, you probably
        have a nasty security vulnerability. ~ simon willison

        Please read: www.adobe.com/devnet/flashplayer/articles/cross_domain_policy.html

   <allow-access-from domain="*" to-ports="*" />

   -->
</cross-domain-policy>');
                                fclose($f);
                                break;

                            case 2:
                                //robits.txt
                                $f = fopen('robots.txt', 'w');
                                fwrite($f, '# www.robotstxt.org/
# www.google.com/support/webmasters/bin/answer.py?hl=en&answer=156449

User-agent: *');
                                fclose($f);
                                break;

                            case 3:
                                //IE PNG Fix
                                file_put_contents('lib/js/iepngfix.min.js', file_get_contents('http://www.dillerdesign.com/experiment/DD_belatedPNG/DD_belatedPNG_0.0.8a-min.js'));

                            case 4:
                                //IE Update Notification

                        }
                    break;

                }
        die();
    }
?><!DOCTYPE html>
<html>
<head>
    <link href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAIAAACQkWg2AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyBpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBXaW5kb3dzIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjlDRUVBQTdDQzU2RDExREY5NkQ3QkEwMjA0Qzg4QTZBIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjlDRUVBQTdEQzU2RDExREY5NkQ3QkEwMjA0Qzg4QTZBIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6OUNFRUFBN0FDNTZEMTFERjk2RDdCQTAyMDRDODhBNkEiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6OUNFRUFBN0JDNTZEMTFERjk2RDdCQTAyMDRDODhBNkEiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz6Y32TMAAACHUlEQVR42lySv09TURTHz7n3vvLa0kqplAKiJiYqaMKgYmTRaGKig4uJfwRxdnFkcDNxNXF3dDARjcSwGAcGFgkdCEaDhaZSSn+/d+85nkJLn9684b2c9z3fz/eci6uL10daJdIe9I9CqIXoa9YI0YMuDJJjZiSsTELF2kExpmBpw3s87a6cog5BtFHDakUMlvHk8RR2CL+W9dufxihkwGjVAqqBI4CI1/ZVNcBxn9cr6ktJNR38B2aiHwkD737pQk2NxngmTW+2zGyans3apgU+AYsK0h4sjNHaPhYO8U+A3w/UakmXO/+Y9BwMQrGF73e6DAkNdYvrFWw7cAzLRT1s4NGUOx5AX6CkPb/cNA5koCAle0QvqVZ29WScZWjHgi6Sp2Czih+LWjK0jnDjGi6lu3UB+1ZWohQwFc2Q8uD1llfuoFhZklXwvXEKqYsk7T7v6o2qGtLcE0jhXJJvZl3LATNMJ/l2jibifDnNgiSBA4Kcz44jDvJ+I0uBw7kM3c+7J2fd3bx7MOlkbnJN5rN0Pskh4UAggW5l6UyCtut4J0f5OMlkRCNsWZ+fXgwReqvoCYR7KsHPr9pSG18VjPwtuZd/650mvpgLxLbdv1R68dpoipuIuB/AQYiZGG83VDXEHw1c2dMLp+lCiglwJAaIYE3CdIYydQjQeCXCTzXtJ2F+GPYcFAOYmeju4cMhPBymUZ9CG7b9zF8BBgDtsAH676K7XQAAAABJRU5ErkJggg==" rel="shortcut icon">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <style type="text/css">* {
    margin: 0;
    padding: 0;
}

html, body {
    height: 100%;
}
p{
    margin-top: 1em;
    margin-bottom: 1em;
}

.outlink{
    color: #0645AD;
    text-decoration: none;
}
.outlink:hover{
    text-decoration: underline;
}
a img{
    border: none;
}

/*
	Falls gew¸nscht, hier noch Schrift-Familie und Grˆﬂe ausw‰hlen.
*/
body {
    background-color: #fff;
    color: #333;
    line-height: 1.3em;
    font-family: Arial, Helvetica, sans-serif
}

a{
    color: #000;
}

h1,h2,h3,h4,h5,h6{
    font-family: 'Times New Roman', Times, serif
}

h1{
    line-height: 2em;
}

#wrapper {
    margin: 0 auto;
    width: 960px;
    min-height: 100%;
    height: auto !important;
    height: 100%;
    position: relative;
}

/*
	Kopfbereich der Seite.
	Enth‰lt Logo und eventuell noch Navigation
*/
#header {

}

/*
    Inhaltsbereich der Seite.
    Enth‰lt Artikel und Spalten.
*/
#content {
}

#colLeft, #colRight, #colMain, #header, #footer {
    padding: 10px;
}

#colLeft {
    float: left;
    width: 180px;
}

#colLeft a{
    color: #333;
    text-decoration: none;
}
#colLeft a:hover{
    text-decoration: underline;
}

#colMain {
    margin-left: 200px; /* Breite von Linker Spalte, wenn vorhanden */
}


#content.dock_bottom {
    padding-bottom: 50px; /* Hˆhe des Footers! */
}

/*
    Fuﬂbereich der Seite
    Enth‰lt Informationen und eventuell noch Navigation
*/
#footer {
    font-size: 0.8em;
    color: #aaa;
}

#footer a{
    color: #999;
}

/*
	Footer dockt am unteren Bildschirmrand an.
*/
#footer.dock_bottom {
    position: absolute;
    bottom: 0;
    width: 100%;
    height: 50px; /* Abh‰ngig vom Layout */
}

/* ========================================================= */
/* Klassen f¸r ULs, um sie als Men¸s zu verwenden */
.nolist {
    list-style: none;
}

.horizontal {
    height: 1.3em;
}

.horizontal li {
    float: left;
    display: block;
}

.slidebox{
    width: 200px;
    height: 100px;
    overflow-y: auto;
    border: #000 solid 1px;
    margin-bottom: 1em;
    padding: 5px;
}

.code{
    font-family: monospace;
    padding-right: 20px;
}</style>
    <title>Firestarter for CodeIgniter</title>
</head>

<body>
<div id="wrapper">
    <div id="header">
        <a href="?"><h1>Firestarter for CodeIgniter</h1></a>
    </div>
    <div id="content" class="dock_bottom">

        <div id="colLeft">
            <ul class="">
                <li><a href="?a=install" class="noinstreq">Download and Extract</a></li>
                <li><a href="?a=configure" class="instreq">Configure</a></li>
                <li><a href="?a=models" class="dbreq">Create Models</a></li>
                <li><a href="?a=controllers" class="instreq">Create Controllers</a></li>
                <li><a href="?a=views" class="instreq">Create Views</a></li>
                <li><a href="?a=basics" >Deploy Stuff</a></li>
                <!--<li><a href="?a=backend" class="dbreq">Backend<span style="font-size: smaller">[experimental]</span></a></li>-->
            </ul>
        </div>

        <div id="colMain">
            <?
                switch($area){
                    case 'install':
                        ?>
                          <h2>Download and Extract CodeIgniter</h2>
                          <p>
                              The current Version of CodeIgniter is <?=$ciVersion?>.<br>
                          </p>
                          <input type="button" id="btn_download" value="Download and Extract now"><br>
                          <label><input type="checkbox" value="1" id="chk_remdoc" checked="checked"> Remove Documentation</label><br><br>
                            <span id="info"></span>
                        <?
                    break;
                    case 'configure':
                        $cc->select('database');
                        ?>
                          <h2>Configure CodeIgniter</h2>
                          <p>
                              You can set up the most important settings of CodeIgniter directly from here.<br>
                              They will be written into <code>/system/application/config/</code>
                          </p>
                                <h3>Database</h3>
                            <table>
                                <tr>
                                    <td>Host</td>
                                    <td><input type="text" value="<?=$cc->get('default|hostname');?>" id="txt_db_hostname"></td>
                                </tr>
                                <tr>
                                    <td>User</td>
                                    <td><input type="text" value="<?=$cc->get('default|username');?>" id="txt_db_username"></td>
                                </tr>
                                <tr>
                                    <td>Password</td>
                                    <td><input type="text" value="<?=$cc->get('default|password');?>" id="txt_db_password"></td>
                                </tr>
                                <tr>
                                    <td>Database</td>
                                    <td><input type="text" value="<?=$cc->get('default|database');?>" id="txt_db_database"></td>
                                </tr>
                                <tr>
                                    <td>Driver</td>
                                    <td><? $sel = $cc->get('default|dbdriver'); ?>
                                        <select id="cmb_db_driver">
                                            <option value="mysql"<? if($sel == 'mysql') echo ' selected="selected"'; ?>>MySQL</option>
                                            <option value="mysqli"<? if($sel == 'mysqli') echo ' selected="selected"'; ?>>MySQLi</option>
                                            <option value="postgre"<? if($sel == 'mysql') echo ' selected="selected"'; ?>>Postgre</option>
                                            <option value="odbc"<? if($sel == 'odbc') echo ' selected="selected"'; ?>>ODBC</option>
                                            <option value="mssql"<? if($sel == 'mssql') echo ' selected="selected"'; ?>>MS SQL</option>
                                            <option value="sqlite"<? if($sel == 'sqlite') echo ' selected="selected"'; ?>>SQLite</option>
                                            <option value="oci8"<? if($sel == 'oci8') echo ' selected="selected"'; ?>>OCI8</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td><input type="button" value="Save DB-Settings" id="btn_db_save"></td>
                                </tr>
                            </table>
                        <br>
                        <h3>Basics</h3>
                        <? $cc->select('config'); ?>
                            <table>
                                <tr>
                                    <td>Base-URL</td>
                                    <td><input type="text" id="txt_baseurl" value="<?=$cc->get('base_url')?>"></td>
                                </tr>
                                <tr>
                                    <td>URL Suffix</td>
                                    <td><input type="text" id="txt_urlsuffix" value="<?=$cc->get('url_suffix')?>"></td>
                                </tr>
                                <tr>
                                    <td>Default Controller</td><? $cc->select('routes'); ?>
                                    <td><input type="text" id="txt_defaultcontroller" value="<?=$cc->get('default_controller')?>"></td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td><input type="button" value="Save Basics" id="btn_baseurl_save"></td>
                                </tr>
                            </table>
                        <br>
                        <h3>Autoload</h3>
                        <b>Libraries</b>
                        <div class="slidebox" id="autoload_libraries">
                           <?
                           $dir = scandir('system/libraries/');
                           foreach($dir as $file){
                               if(substr($file, -3) == 'php' && ! in_array(substr($file, 0,-4), array('Config', 'Controller', 'Model', 'Hooks', 'Loader', 'Output', 'Router', 'URI'))) echo '<label><input type="checkbox"> '.substr($file, 0, -4).'</label><br>';
                           }
                           ?>
                        </div>
                        <b>Helper Files</b>
                        <div class="slidebox" id="autoload_helper">
<?
                           $dir = scandir('system/helpers/');
                           foreach($dir as $file){
                               if(substr($file, -3) == 'php') echo '<label><input type="checkbox"> '.substr($file, 0, -4).'</label><br>';
                           }
                           ?>
                        </div>
                        <b>Plugins</b>
                        <div class="slidebox" id="autoload_plugins"><?
                           $dir = scandir('system/plugins/');
                           foreach($dir as $file){
                               if(substr($file, -3) == 'php') echo '<label><input type="checkbox"> '.substr($file, 0, -4).'</label><br>';
                           }
                           ?></div>
                        <b>Models</b>
                        <div class="slidebox" id="autoload_models""><?
                           $dir = scandir('system/application/models/');
                           foreach($dir as $file){
                               if(substr($file, -3) == 'php') echo '<label><input type="checkbox"> '.substr($file, 0, -4).'</label><br>';
                           }
                           ?></div><span style="font-size: smaller">You can visit this page again after you've created some models!</span><br>
                        <input type="button" value="Save Autoloading" id="btn_autoload_save">
                                <?
                    break;

                    case 'models':
                        ?>
                                <h2>Create Models</h2>
                                <p>
                                    Choose the tables from your Database for which Firestarter should create an automatic model.
                                </p>
                                <p>
                                    Automatic models provide the following methods:<br>
                                    <ul>
                                        <li><b>add()</b><br>
                                            Adds new Elements to the model's table.
                                        </li>
                                        <li><b>remove()</b><br>
                                            Removes Elements from the model's table.
                                        </li>
                                        <li><b>get()</b><br>
                                            Selects one or more elements with custom table-fields.
                                        </li>
                                        <li><b>set()</b><br>
                                            Updates custom table-fields of one or more elements.
                                        </li>
                                    </ul>
                                </p><br>
                                <div class="slidebox" style="height: 250px;" id="newmodels">
                                <?
                                $result = $sql->queryAll('SHOW TABLES');
                                foreach($result as $item){
                                    echo '<label><input type="checkbox"> '.$item['Tables_in_'.$dbLoginData['database']].'</label><br>';
                                }
                                ?>
                                </div>
                            <label><input type="checkbox" checked="checked" id="chk_remove_prefix"> remove name prefix </label><input type="text" id="txt_remove_prefix" value="tbl_"><br>
                            <input type="button" value="Create Models" id="btn_create_models"><br>
                        <span id="info"></span><?
                    break;

                    case 'controllers':
                        ?>
                                <h2>Create Controllers</h2>
                                <p>
                                    Firestarter allows you to rapidly create one or more controllers for your application.<br>
                                    You can create your controllers using the Firestarter Controller Markup "Language" (FCML) in the Textbox below.
                                </p>
                                <textarea id="fcmlcontainer" style="width: 100%; height: 300px;"></textarea><br>
                                <input type="button" id="btn_create_controllers" value="Create Controllers"><br><br>
                                <span style="font-size: smaller">
                                    <b>Markup Description</b><br>
                                    Write one command per line - blank lines will be ignored.<br><br>
                                    <table>
                                        <tr>
                                            <td class="code">+optionalfoldername/controllername</td>
                                            <td>Creates new Controller</td>
                                        </tr>
                                        <tr>
                                            <td class="code">*</td>
                                            <td>Creates Constructor inside the controller</td>
                                        </tr>
                                        <tr>
                                            <td class="code">-functionname</td>
                                            <td>Creates a new function inside the controller</td>
                                        </tr>
                                        <tr>
                                            <td class="code">m(modelA,modelB,modelC)</td>
                                            <td>Loads several models into the function</td>
                                        </tr>
                                        <tr>
                                            <td class="code">a(callA,callB,callC)</td>
                                            <td>Creates an ajax-call block with several calls inside the function</td>
                                        </tr>
                                        <tr>
                                            <td class="code">v(viewA,viewB)</td>
                                            <td>Loads several views inside the function</td>
                                        </tr>
                                        <tr>
                                            <td class="code">code</td>
                                            <td>creates space for custom code inside the function</td>
                                        </tr>
                                    </table>
                                <?
                    break;

                    case 'views':
                        ?>
                                <h2>Create Views</h2>
                                <p>
                                    Firestarter is able to scan your existing controllers for the views that you're intending to use and create the empty view files automatically.
                                </p>
                                <input type="button" value="Scan now" id="btn_scan_controllers">
                                <div id="scannedControllers"></div>
                                <?
                    break;

                    case 'basics':
                        ?>
                                <h2>Deploy Stuff</h2>
                                <p>
                                    You may want to add some basic stuff to your project for beginning.
                                </p>
                                <h3>JavaScript Framework</h3>
                                <p>
                                    Choose a JavaScript Framework to be dropped under <code>lib/js/</code><br>
                                </p>
                                <input type="button" value="jQuery 1.4.2<? if(file_exists('lib/js/jquery-1.4.2.min.js')) echo ' ✔';?>" id="btn_frm_jquery"> <a href="http://jquery.com" class="outlink">Visit Site <img src="http://bits.wikimedia.org/skins-1.5/vector/images/external-link-ltr-icon.png" alt=""></a><br>
                                <input type="button" value="Prototype 1.6.1<? if(file_exists('lib/js/prototype.js')) echo ' ✔';?>" id="btn_frm_prototype"> <a href="http://www.prototypejs.org/" class="outlink">Visit Site <img src="http://bits.wikimedia.org/skins-1.5/vector/images/external-link-ltr-icon.png" alt=""></a><br>
                                <input type="button" value="MooTools 1.2.4<? if(file_exists('lib/js/mootools-1.2.5-core-yc.js')) echo ' ✔';?>" id="btn_frm_mootools"> <a href="http://mootools.net/" class="outlink">Visit Site <img src="http://bits.wikimedia.org/skins-1.5/vector/images/external-link-ltr-icon.png" alt=""></a><br>
                            <br>
                            <input type="button" value="Cufon <? if(file_exists('lib/js/cufon-yui.js')) echo ' ✔';?>" id="btn_frm_cufon"> <a href="http://cufon.shoqolate.com" class="outlink">Visit Site <img src="http://bits.wikimedia.org/skins-1.5/vector/images/external-link-ltr-icon.png" alt=""></a><br>
                                <br><br>
                                <h3>Drop Icons</h3>
                                <p>
                                    Do you want some Icons to be dropped under <code>lib/css/icons/[setname]/</code><br>
                                    (including an css-file to access it)?<br>
                                    <input type="button" value="Silk Icons<? if(file_exists('lib/css/icons/silk.css')) echo ' ✔';?>" id="btn_drop_icons_silk"> <a href="http://famfamfam.com/lab/icons/silk/" class="outlink">Visit Site <img src="http://bits.wikimedia.org/skins-1.5/vector/images/external-link-ltr-icon.png" alt=""></a><br>
                                    <input type="button" value="Flag Icons<? if(file_exists('lib/css/icons/flags.css')) echo ' ✔';?>" id="btn_drop_icons_flag"> <a href="http://famfamfam.com/lab/icons/flags/" class="outlink">Visit Site <img src="http://bits.wikimedia.org/skins-1.5/vector/images/external-link-ltr-icon.png" alt=""></a>
                                </p><br><br>
                                <h3>.htaccess</h3>
                                <p>
                                    Drop an customized .htaccess File in the root-directory. (Derived from <a href="http://html5boilerplate.com" class="outlink">html5boilerplate.com <img src="http://bits.wikimedia.org/skins-1.5/vector/images/external-link-ltr-icon.png" alt=""></a>)
                                </p>
                                <p id="htaccess">
                                    <label><input type="checkbox" value="urlrewrite" checked="checked"> Rewrite URL to hide index.php</label><br>
                                    <label><input type="checkbox" value="latestIE"> Force latest IE</label><br>
                                    <label><input type="checkbox" value="crossAJAX"> Accept cross domain AJAX requests</label><br>
                                    <label><input type="checkbox" value="addmimetypes" checked="checked"> Add multiple mimetypes for proper file serving </label><br>
                                    <label><input type="checkbox" value="concatenation"> Allow concatenation from within specific js and css files</label><br>
                                    <label><input type="checkbox" value="gzip" checked="checked"> Enable GZIP compression for several filetypes</label><br>
                                    <label><input type="checkbox" value="expireheaders" checked="checked"> Set far-future expire headers for static content</label><br>
                                    <label><input type="checkbox" value="forwarddomain" checked="checked"> Forward to base domain (Example: http://www.domain.com to http://domain.com)</label><br>
                                    <label><input type="checkbox" value="utf8" checked="checked"> Always use UTF-8 encoding for text</label><br>
                                    <input type="button" value="Create .htaccess<? if(file_exists('.htaccess')) echo ' ✔';?>" id="btn_create_htaccess">
                                </p>
                            <br><br><h3>Misc</h3>
                                <p>
                                    <input type="button" value="crossdomain.xml<? if(file_exists('crossdomain.xml')) echo ' ✔';?>" id="btn_crossdomain"><br>
                                    <input type="button" value="robots.txt<? if(file_exists('robots.txt')) echo ' ✔';?>" id="btn_robots"><br>
                                    <input type="button" value="IE PNG-Fix<? if(file_exists('lib/js/iepngfix.min.js')) echo ' ✔';?>" id="btn_ie_png_fix"> under <code>lib/js/iepngfix.min.js</code> <a href="http://www.dillerdesign.com/experiment/DD_belatedPNG/#usage" class="outlink">Usage <img src="http://bits.wikimedia.org/skins-1.5/vector/images/external-link-ltr-icon.png" alt=""></a><br>
                                    <!--<input type="button" value="IE6 Update-Notification<? if(file_exists('crossdomain.xml')) echo ' ✔';?>" id="btn_ieupdate"> under <code>lib/ie6update/</code><br>-->
                                </p>
                                <?
                    break;

                    default:
?>
            <h2>Welcome to Firestarter</h2>
            <p>
                This Script is Hand-Crafted to speed up the process of creating new projects in CodeIgniter.
            </p>
            <p>
                <b>Please be aware:</b> There is no guarantee that this script won't make any mistakes, so we can't be made responsible for any data-loss created by this script.
            </p>
            <p>
                <b>IMPORTANT!</b><br>
                Please remove this Script before you deploy your project out of your development environment!<br>
                Firestarter can only work correctly with PHP safemode off and a established internet-connection.
            </p><?
                    }
                    ?>
        </div>

    </div>
    <div id="footer" class="dock_bottom">
        Firestarter v 1.0 beta - brought to you by the guy from <a href="http://parastudios.de">parastudios.de</a>
    </div>
</div>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
<script>!window.jQuery && document.write('<script src="lib/js/jquery-1.4.2.min.js"><\/script>')</script>
<script type="text/javascript">
    var ci_dbaccess = <?=($ciDBAccess) ? 'true' : 'false'?>;
    var ci_installed = <?=($ciInstalled) ? 'true' : 'false'?>;

    $(document).ready(function(){
        $('#btn_download').bind('click', function(){
           $('#info').text('Downloading CodeIgniter...');
           $.get('?ajax=download', function(){
                $('#info').text('Download finished. Extracting archive...');
               var zusatz = '';
               if($('#chk_remdoc:checked').size()) zusatz = '&remdoc';
                $.get('?ajax=extract'+zusatz, function(){
                   $('#info').text('Extraction finished.');
                    unblock('.instreq');
                    block('.noinstreq', 'CodeIgniter is already installed!');
                });
           });

        });

        $('#btn_db_save').bind('click', function(){
            var params = {
                hostname: $('#txt_db_hostname').val(),
                username: $('#txt_db_username').val(),
                password: $('#txt_db_password').val(),
                database: $('#txt_db_database').val(),
                driver:   $('#cmb_db_driver').val()
            };
            $('#btn_db_save').val('Saving...');
            $.post('?ajax=save_db', params, function(){
                $('#btn_db_save').val('Save DB-Settings ✔');
            });
        });

        $('#btn_baseurl_save').bind('click', function(){
           var params = {
               baseURL:     $('#txt_baseurl').val(),
               urlSuffix:   $('#txt_urlsuffix').val(),
               defaultContr: $('#txt_defaultcontroller').val()
           };
            $('#btn_baseurl_save').val('Saving...');
            $.post('?ajax=save_basics', params, function(){
                $('#btn_baseurl_save').val('Save Basics ✔');
            });
        });

        $('#btn_autoload_save').bind('click', function(){
            var libraries = Array();
            var helpers = Array();
            var plugins = Array();
            var models = Array();
            $.each($('#autoload_libraries :checked').parent(), function(){
               libraries.push($(this).text().replace(' ', '').toLowerCase());
            });
            $.each($('#autoload_helpers :checked').parent(), function(){
               helpers.push($(this).text().replace(' ', '').toLowerCase());
            });
            $.each($('#autoload_plugins :checked').parent(), function(){
               plugins.push($(this).text().replace(' ', '').toLowerCase());
            });
            $.each($('#autoload_models :checked').parent(), function(){
               models.push($(this).text().replace(' ', '').toLowerCase());
            });

            var params = {
                libraries: libraries.join(','),
                helpers: helpers.join(','),
                plugins: plugins.join(','),
                models: models.join(',')
            };
            $('#btn_autoload_save').val('Saving...');
            $.post('?ajax=save_autoload', params, function(){
                $('#btn_autoload_save').val('Save Autoloading ✔');
            });
        });

        $('#btn_create_models').bind('click', function(){
            var models = Array();
            $.each($('#newmodels :checked').parent(), function(){
               models.push($(this).text().replace(' ', '').toLowerCase());
            });

            var rm = '';
            if($('#chk_remove_prefix:checked').size()) rm = $('#txt_remove_prefix').val();
            var param = {
                'models': models.join(','),
                remPrf: rm
            };
            $('#btn_create_models').val('Creating...');
            $.post('?ajax=createModels', param, function(){
                $('#btn_create_models').val('Create Models ✔');
                $('#info').text('You can return to the "Configure" area now to add the new models in the autoload-section.');
            });
        });

        $('#btn_create_controllers').bind('click', function(){
           var param = {
               fcml: $('#fcmlcontainer').val()
           };

           $('#btn_create_controllers').val('Creating...');
           $.post('?ajax=create_controllers', param, function(){
              $('#btn_create_controllers').val('Create Controllers ✔');
           });
        });

        $('#btn_scan_controllers').bind('click', function(){
           $('#btn_scan_controllers').val('Scanning...')
           $.getJSON('?ajax=scan_controllers', function(json){
               $('#btn_scan_controllers').val('Scan Controllers  ✔');
               var html = '<br><b>Choose the Views to create</b><br>';
               $.each(json, function(){
                    html += '<label>';
                   html += '<input checked="checked" value="'+this+'" type="checkbox"> '+this;
                   html += '</label><br>';
               });
               html += '<input type="button" id="btn_create_views" value="Create selected views">';
               $('#scannedControllers').html(html);
               $('#btn_create_views').bind('click', function(){
                   $('#btn_create_views').val('Creating...');
                   var viewlist = Array();
                   $.each($('#scannedControllers :checked'), function(){
                       viewlist.push($(this).val());
                   });
                   var params = {
                       views: viewlist.join(',')
                   };
                  $.post('?ajax=create_views', params, function(){
                      $('#btn_create_views').val('Create views ✔');
                  });
               });
           })
        });

        $('#btn_frm_jquery').bind('click', function(){
           $('#btn_frm_jquery').val('Deploying...');
            $.post('?ajax=drop_framework', {fid: 1}, function(response){
                $('#btn_frm_jquery').val('jQuery 1.4.2 ✔');
            });
        });
        $('#btn_frm_prototype').bind('click', function(){
           $('#btn_frm_prototype').val('Deploying...');
            $.post('?ajax=drop_framework', {fid: 2}, function(response){
                $('#btn_frm_prototype').val('Prototype 1.6.1 ✔');
            });
        });
        $('#btn_frm_mootools').bind('click', function(){
           $('#btn_frm_mootools').val('Deploying...');
            $.post('?ajax=drop_framework', {fid: 3}, function(response){
                $('#btn_frm_mootools').val('MooTools 1.2.4 ✔');
            });
        });
        $('#btn_frm_cufon').bind('click', function(){
           $('#btn_frm_cufon').val('Deploying...');
            $.post('?ajax=drop_framework', {fid: 4}, function(response){
                $('#btn_frm_cufon').val('Cufon ✔');
            });
        });

        $('#btn_drop_icons_silk').bind('click', function(){
           $('#btn_drop_icons_silk').val('Deploying...');
            $.post('?ajax=drop_icons', {icid: 1}, function(response){
                $('#btn_drop_icons_silk').val('Silk Icons ✔');
            });
        });
        $('#btn_drop_icons_flag').bind('click', function(){
           $('#btn_drop_icons_flag').val('Deploying...');
            $.post('?ajax=drop_icons', {icid: 2}, function(response){
                $('#btn_drop_icons_flag').val('Flag Icons ✔');
            });
        });

        $('#btn_create_htaccess').bind('click', function(){
            var clicked = Array();
           $.each($('#htaccess :checked'), function(){
               clicked.push($(this).val());
           });
            $('#btn_create_htaccess').val('Creating...');
            $.post('?ajax=htaccess', {elements: clicked.join(',')}, function(){
                $('#btn_create_htaccess').val('Create .htaccess ✔');
            });
        });

        $('#btn_crossdomain').bind('click', function(){
           $('#btn_crossdomain').val('Deploying...');
            $.post('?ajax=drop_misc', {icid: 1}, function(response){
                $('#btn_crossdomain').val('crossdomain.xml ✔');
            });
        });
        $('#btn_robots').bind('click', function(){
           $('#btn_robots').val('Deploying...');
            $.post('?ajax=drop_misc', {icid: 2}, function(response){
                $('#btn_robots').val('robots.txt ✔');
            });
        });
        $('#btn_ie_png_fix').bind('click', function(){
           $('#btn_ie_png_fix').val('Deploying...');
            $.post('?ajax=drop_misc', {icid: 3}, function(response){
                $('#btn_ie_png_fix').val('IE PNG-Fix ✔');
            });
        });
        $('#btn_ieupdate').bind('click', function(){
           $('#btn_ieupdate').val('Deploying...');
            $.post('?ajax=drop_misc', {icid: 3}, function(response){
                $('#btn_ieupdate').val('IE6 Update-Notification ✔');
            });
        });

        if(ci_installed) block('.noinstreq', 'CodeIngiter is already installed!');
        if( ! ci_installed) block('.instreq, .dbreq', 'CodeIgniter is required to be installed!');
        if(ci_installed && ! ci_dbaccess) block('.dbreq', 'Database Configuration is required!');
    });

    function block(item, message){
        $(item).css('color', '#cccccc').bind('click', function(e){
            alert(message);
            e.preventDefault();
        });
    }

    function unblock(item){
        $(item).css('color', '#000000').unbind('click');
    }
</script>
</body>
</html>