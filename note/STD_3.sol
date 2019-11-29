pragma solidity ^0.5.0;
pragma experimental ABIEncoderV2;

contract STD_Zombiee {

    struct Zombiee { //プロパティは18個
        uint256 id;
        string firstName;
        string middleName;
        string lastName;
        string favoriteFood;
        string placeOfBirth;
        string job;
        string nickName;
        uint256 age;
        uint256 height;
        uint256 weight;
        uint256 BMI;
        uint256 bloodPressure;
        uint256 footSize;
    }

    Zombiee[] public zombiees;
 
    function zombieeFactory( //引数は17個
        string memory _firstName,
        string memory _middleName,
        string memory _lastName,
        string memory _favoriteFood,
        string memory _placeOfBirth,
        string memory _job,
        string memory _nickName,
        uint256 _age,
        uint256 _height,
        uint256 _weight,
        uint256 _BMI,
        uint256 _bloodPressure,
        uint256 _footSize
        ) public {
        Zombiee memory zombiee = Zombiee({
            id: 0,
            firstName: _firstName,
            middleName: _middleName,
            lastName: _lastName,
            favoriteFood: _favoriteFood,
            placeOfBirth: _placeOfBirth,
            job: _job,
            nickName: _nickName,
            age: _age,
            height: _height,
            weight: _weight,
            BMI: _BMI,
            bloodPressure: _bloodPressure,
            footSize: _footSize
        });
        zombiees.push(zombiee);
        emit ZombieeCreated(zombiee);
    }

    event ZombieeCreated(Zombiee zombiee);
}
