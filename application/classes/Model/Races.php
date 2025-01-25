<?php
class Model_Races extends Model
{
    public function getAll()
    {
        return DB::select()->from('races')->execute()->as_array();
    }

    public function getTotal()
    {
        $query = DB::select(array(DB::expr('COUNT(*)'), 'total'))->from('races');
        if(count($query)>0){
            return $query->execute()->as_array();

        }else{
            return false;
        }
    }

    public function getOne($id)
    {
        return DB::select()->from('races')->where('id','=',$id)->execute()->as_array();
    }

    public function getUserById($id)
    {
        $user_id = DB::select('user_id')->from('races')->where('id','=',$id)->execute()->as_array();
        return DB::select('name')->from('users')->where('id','=',$user_id[0])->execute()->as_array();
    }


}