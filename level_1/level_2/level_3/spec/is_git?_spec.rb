require_relative '../is_git?'

describe '#is_git?' do
  let(:no_git_path) {'~'}
  let(:git_path) {'../../../'}
  let(:current_path) {'./'}

  it 'returns true when a .git folder is found in the current directory' do
    expect(is_git?(git_path)).to eq(true)
  end
  it 'returns false when a .git folder is not found in the current directory' do
    expect(is_git?(no_git_path)).to eq(false)
  end
  it 'returns true when a .git folder is found through recursion in a parent directory' do
    expect(is_git?(current_path)).to eq(true)
  end
end
