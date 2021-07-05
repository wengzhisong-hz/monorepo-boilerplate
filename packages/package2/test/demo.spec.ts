import { expect } from 'chai';
import { double } from '../src';

describe('test package2', () => {
  it('should be double', () => {
    expect(double(2)).to.equal(4);
  });
});
