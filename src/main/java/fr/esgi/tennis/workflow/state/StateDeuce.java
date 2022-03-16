package fr.esgi.tennis.workflow.state;

import fr.esgi.tennis.enumeration.Score;
import fr.esgi.tennis.exceptions.ChangeScoreImpossibleException;
import fr.esgi.tennis.exceptions.CodeMessage;
import fr.esgi.tennis.model.Player;
import fr.esgi.tennis.workflow.AbstractStatus;

public class StateDeuce extends AbstractStatus implements State {
    public StateDeuce() {
        name = Score.DEUCE;
    }

    @Override
    public void next(Player p) {
        p.setScore(new StateAdvantage());
    }

    @Override
    public void prev(Player p) {
        throw new ChangeScoreImpossibleException(CodeMessage.CHANGEMENT_SCORE_IMPOSSIBLE);
    }
}
