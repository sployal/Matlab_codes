function minesweeper_board = create_minesweeper_board(width, height, num_bombs)
    % Initialize an empty board with zeros
    board = zeros(height, width);
    
    % Randomly place bombs on the board
    bomb_indices = randperm(width * height, num_bombs);
    for idx = bomb_indices
        [row, col] = ind2sub([height, width], idx);
        board(row, col) = -1;
    end
    
    % Calculate the number of bombs touching each empty square
    for row = 1:height
        for col = 1:width
            if board(row, col) ~= -1
                % Count bombs in the 3x3 neighborhood
                bomb_count = sum(board(max(1, row - 1):min(height, row + 1), ...
                    max(1, col - 1):min(width, col + 1)) == -1);
                board(row, col) = bomb_count;
            end
        end
    end
    
    % Convert the board to a string matrix
    minesweeper_board = cell(height, width);
    for row = 1:height
        for col = 1:width
            if board(row, col) == -1
                minesweeper_board{row, col} = 'X';
            else
                minesweeper_board{row, col} = num2str(board(row, col));
            end
        end
    end
end

% Example usage
width = 10;
height = 8;
num_bombs = 12;
minesweeper_board = create_minesweeper_board(width, height, num_bombs);

% Display the board
for row = 1:height
    disp(strjoin(minesweeper_board(row, :), ' '));
end
