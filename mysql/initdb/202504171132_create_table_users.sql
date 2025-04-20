USE r2db;

CREATE TABLE IF NOT EXISTS r2_users (
    id CHAR(36) PRIMARY KEY, -- Make it simple
    
    -- Data
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    
    -- Audit data
    create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    update_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    delete_flg INT DEFAULT 0
)

ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
