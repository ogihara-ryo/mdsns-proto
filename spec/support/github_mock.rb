OmniAuth.config.test_mode = true
OmniAuth.config.add_mock(
  :github,
  'uid' => '12345678',
  'extra' => {
    'raw_info' => {
      'name' => 'Ogihara Ryo',
      'nickname' => 'ogihara-ryo',
      'avatar_url' => 'https://avatars2.githubusercontent.com/u/11517870?v=4',
      'bio' => 'bio'
    }
  }
)
