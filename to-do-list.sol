//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Insert, update, read from array of struct
contract ToDoList{
    struct Todo {
        string text;
        bool completed;
    }

    Todo[] public todos; // create struct type array

    function create(string calldata _text) external {
        todos.push(Todo({ // add data to array
            text:   _text,
            completed: false
        }));
    }

    function updateText(uint _index, string calldata _text) external{
        todos[_index].text  =   _text; // update specific index of array.
    }

    function get(uint _index) external view returns (string memory, bool){
        Todo memory todo =  todos[_index]; // update specific index of array.
        return (todo.text, todo.completed);
    }

    function toggleCompleted(uint _index) external{
        todos[_index].completed  =   !todos[_index].completed; // toggle todo "completed" property.
    }
} 