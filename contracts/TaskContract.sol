// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6; // version del lenguaje usado

contract TaskContract {

    struct Task { // tipo de dato
        uint256 id;
        string title;
        string description;
        bool done;
        uint256 createdAt;
    }

    mapping  (uint256 => Task) public Tasks; // estructura de datos parecida al diccionario

    function createTask(){

    }

    function toggleDone

}
