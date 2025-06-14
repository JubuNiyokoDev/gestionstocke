<?php

class Ventes extends \Phalcon\Mvc\Model
{

    /**
     *
     * @var integer
     */
    public $iD_VENTE;

    /**
     *
     * @var integer
     */
    public $iD_UTILISATEUR;

    /**
     *
     * @var integer
     */
    public $iD_CLIENT;

    /**
     *
     * @var string
     */
    public $dATE_VENTE;

    /**
     * Initialize method for model.
     */
    public function initialize()
    {
        $this->setSchema("stocketvente");
        $this->setSource("ventes");
        $this->hasMany('iD_VENTE', 'Concerner', 'iD_VENTE', ['alias' => 'Concerner']);
        $this->belongsTo('iD_CLIENT', '\Clients', 'iD_CLIENT', ['alias' => 'Clients']);
        $this->belongsTo('iD_UTILISATEUR', '\Utilisateurs', 'iD_UTILISATEUR', ['alias' => 'Utilisateurs']);
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return Ventes[]|Ventes|\Phalcon\Mvc\Model\ResultSetInterface
     */
    public static function find($parameters = null): \Phalcon\Mvc\Model\ResultsetInterface
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return Ventes|\Phalcon\Mvc\Model\ResultInterface|\Phalcon\Mvc\ModelInterface|null
     */
    public static function findFirst($parameters = null): ?\Phalcon\Mvc\ModelInterface
    {
        return parent::findFirst($parameters);
    }

}
