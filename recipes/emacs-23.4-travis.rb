recipe 'emacs-23.4-travis' do
  tar_gz 'https://github.com/rejeep/evm/releases/download/v0.7.0/emacs-23.4-travis.tar.gz'

  install do
    copy build_path, installations_path
  end
end
