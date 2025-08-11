
board = list[list[str]]

def is_player_winner(board: board, player: str):
    for i in range(0, len(board) - 1):
        # checks the rows
        if all(tile == player for tile in board[i]):
            return True  
        #checks the cols
        if all(tile[i] == player for tile in board):
            return True

    #check diagonal lr
    if all(board[i][i] == player for i in range(3)):
        return True

    #check diagonal rl
    if all(board[2-i][2-i] == player for i in range(3)):
        return True  

    return False


def is_board_full(board: board):
    return all(board[i][j] != "" for i in range(3) for j in range(3))



def count_valid_states(board: board, player: str):
    
    pass












    
b1 = board([["p", "p", ""], ["p", "p", "p"], ["p", "p", "p"]]) 
print(is_board_full(b1))


