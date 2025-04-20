USE r2db;

CREATE TABLE IF NOT EXISTS r2_videos (
    id CHAR(36) PRIMARY KEY,

    -- Foreign key
    user_id CHAR(36), -- video creator 
    creator_id CHAR(36),

    -- Metadata
    score BIGINT NOT NULL DEFAULT 0,
    title VARCHAR(255) NOT NULL,
    duration_time INT NOT NULL,
    description TEXT,
    video_url VARCHAR(255) NOT NULL,

    -- Audit data
    create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    update_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    delete_flg INT NOT NULL DEFAULT 0
)

ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
