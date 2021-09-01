pragma solidity ^0.5.0;

contract todoList{
    uint public taskCount= 0;

    struct task{
        uint id;
        string content;
        bool isComplete; 
    }

    mapping(uint => task) public tasks;

    constructor() public{
        createTask("Check out github.com/Mayank17M");
    }

    function createTask(string memory _content) public {
        taskCount++;
        tasks[taskCount] = task(taskCount, _content, false);
    }
}