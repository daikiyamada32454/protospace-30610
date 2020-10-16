
## usersテーブル

| Column     | Type   | Option     |
| ---------- | ------ | ---------- | 
| email      | string | null:false |
| password   | string | null:false |
| name       | string | null:false |
| profile    | text   | null:false |
| occupation | text   | null:false |
| position   | text   | null:false |

### Association

- has_many :prototypes
- has_many : comments

## prototypesテーブル

| Column     | Type      | Option
| ---------- |---------  |------------ |
| title      | string    | null :false |
| catch_copy | text      | null :false |
| concept    | text      | null :false |
| user       | reference |             |

### Association

- belongs_to :users
- has_many :comments

## comments

| Column    | Type       | Option      |
| --------- | ---------- | ----------- |
| text      | text       | null :false |
| user      | references |             |
| prototype | references |             |

### Association

- belong_to :user
- belong_to :prototype