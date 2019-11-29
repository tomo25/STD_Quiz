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
    }

    struct Human {
        uint256 id;
        uint256 age;
        uint256 height;
        uint256 weight;
        uint256 BMI;
        uint256 bloodPressure;
        uint256 footSize;
        uint256 motherAge;
        uint256 fatherAge;
        uint256 favoriteNumber;
        bool married;

    }

    Zombiee[] public zombiees;
    Human[] public humans;

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
        uint256 _footSize,
        uint256 _motherAge,
        uint256 _fatherAge,
        uint256 _favoriteNumber,
        bool _married
        ) public {
        Zombiee memory zombiee = Zombiee({
            id: 0,
            firstName: _firstName,
            middleName: _middleName,
            lastName: _lastName,
            favoriteFood: _favoriteFood,
            placeOfBirth: _placeOfBirth,
            job: _job,
            nickName: _nickName
        });
        Human memory human = Human({
            id: 0,
            age: _age,
            height: _height,
            weight: _weight,
            BMI: _BMI,
            bloodPressure: _bloodPressure,
            footSize: _footSize,
            motherAge: _motherAge,
            fatherAge: _fatherAge,
            favoriteNumber: _favoriteNumber,
            married: _married
        });
        zombiees.push(zombiee);
        humans.push(human);
        emit ZombieeCreated(zombiee);
    }

    event ZombieeCreated(Zombiee zombiee);
}
