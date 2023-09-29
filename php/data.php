<?php

$data .= 

"<article class='scoreboard'>
                <h2>".$row['course_code']."</h2>
                <div class='row max-score'>
                    <h3>Max Score</h3>
                    <span class='row'>
                        <span class='m-score'>".$row['HighScore']."</span>
                    <img src='icons/Bgold.png'></span>
                </div>
                <div class='row present-score'>
                    <p>Present Score</p>
                    <span class='row'>
                        <span class='p-score'>".$row['present_score']."</span>
                        <img src='icons/Wgold.png'>
                    </span>
                </div>
                <a href='./php/tryagain.php?courses=".$row['course_id']."'><button class='try-again-btn'>Try Again</button></a>
            </article>
           ";