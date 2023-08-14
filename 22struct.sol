// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Structs {
    struct Car {
        string model;
        uint year;
        address owner;
    }

    Car public car;
    Car[] public cars;
    mapping (address=>Car[]) public carsByOwner;

    function examples() external {
        Car memory toyota = Car("toyota", 2003, msg.sender);
        Car memory lambo = Car({model:"lamborghini", owner:msg.sender, year:2003});
        Car memory tesla;
        tesla.model = "tesla";
        tesla.year = 2010;
        tesla.owner=msg.sender;
        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);

        cars.push(Car("benz", 2020, msg.sender));

        // access value
        Car memory _car = cars[0];
        _car.model;

        // change value
        Car storage _car1 = cars[0];
        _car1.year = 1995;
        delete _car1.owner; // reset value

        delete cars[1]; // reset car Object at index 1

    }
}