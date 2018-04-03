<?php
class database{
    public $_dbh = '';
    public $_sql = '';
    public $_cursor = NULL;        
    
    public function database() {
        
        try{
            $this->_dbh = new PDO('mysql:host=localhost; dbname=tintuc_db','root','');
            $this->_dbh->query('set names "utf8"');
        }
        catch(PDOException $ex){
            echo $ex->getMessage();
            die();  
        }
    }
    
    public function setQuery($sql) {
        $this->_sql = $sql;
    }
    //insert
    public function insert($table,$option = array()){
        $count = count($option);
        if ($count>0) {
            $sql='insert into '.$table.' values ('.substr(str_repeat('?,', $count),0,-1).')';
            $this->setQuery($sql);
            $result = $this->execute($option);
        }
        if($result){
            return $this->getLastId();
        }else{
            return false;
        }
        //return $this->getLastId(); 
    }
    //update
    public function update($table,$data,$where){
        if(!empty($data)){
            $newQuery = '';
            $param    = array();
            foreach($data as $key => $value){
            $newQuery .= ", $key = ?";
            $param[]   = $value;
            }
            $newQuery = substr($newQuery,2);
            $sql      = "UPDATE $table SET ".$newQuery;
            if (!empty($where)) {
                $sql    .= "WHERE $where";
            }
            $this->setQuery($sql);
            $results = $this->execute($param);
            return $results->rowCount();
        }
    
    }
    //delete
    public function delete($table,$dataWhere=array()){
        if(!empty($dataWhere)){
            $count = count($dataWhere);
            $sql   = "DELETE FROM $table WHERE id IN (".substr(str_repeat('?,', $count),0,-1).")";
            $this->setQuery($sql);
            $results = $this->execute($dataWhere);
            return $results->rowCount();
        }
    //return $this->affectedRow();

    }
    //Function execute the query 
    public function execute($options=array()) {
        $this->_cursor = $this->_dbh->prepare($this->_sql);
        if($options) {  //If have $options then system will be tranmission parameters
            for($i=0;$i<count($options);$i++) {
                $this->_cursor->bindParam($i+1,$options[$i]);
            }
        }
        $this->_cursor->execute();
        return $this->_cursor;
    }
    
    //Lấy tất cả dữu liệu từ bảng
    public function loadAllRows($options=array()) {
        if(!$options) {
            if(!$result = $this->execute())
                return false;
        }
        else {
            if(!$result = $this->execute($options))
                return false;
        }
        return $result->fetchAll(PDO::FETCH_OBJ);
    }
    
    //Load dữ liệu từ 1 dòng
    public function loadRow($option=array()) {
        if(!$option) {
            if(!$result = $this->execute())
                return false;
        }
        else {
            if(!$result = $this->execute($option))
                return false;
        }
        return $result->fetch(PDO::FETCH_OBJ);
    }
    
    //Function count the record on the table
    public function loadRecord($option=array()) {
        if(!$option) {
            if(!$result = $this->execute())
                return false;
        }
        else {
            if(!$result = $this->execute($option))
                return false;
        }
        return $result->fetch(PDO::FETCH_COLUMN);
    }
    
    public function getLastId() {
        return $this->_dbh->lastInsertId();
    }
    
    public function disconnect() {
        $this->_dbh = NULL;
    }
}
?>  