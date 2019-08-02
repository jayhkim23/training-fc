import React from 'react';

const TextFieldWithSubmit = props => {
  return (
    <div className='input-group columns large-5'>
      <input
        className='input-group-field'
        name={props.name}
        onChange={props.handlerFunction}
        type='text'
        value={props.content} />
        <div className='input-group-button'>
          <input type='submit' className='button' value='Submit' />
        </div>
    </div>
  );
}

export default TextFieldWithSubmit;
