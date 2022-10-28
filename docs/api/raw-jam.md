{
  title: "Raw Jam API reference"
}

Using the Raw jam template, you can control certain elements on the page.
Here's an example of some of the things you can do:
    
    <div class="jam_demo_box">
      <p>A submission button is required. It will open a dialog for someone to
      submit a game. Style it with CSS.</p>
      <button class="add_game_btn">Submit a game</button>
    </div>

    <div class="jam_demo_box">
      <p>Countdown is optional, will show the time left to the next closest
      deadline. Style it with CSS.</p>
      <div class="countdown"></div>
    </div>

    <div class="jam_demo_box">
      <p>Jam status shows the current state of the jam along with its
      dates:</p>
      <div class="jam_status"></div>
    </div>

    <p class="css_explain">You can put CSS in your layout like so:</p>

    <style type="text/css">
    .css_explain {
      display: none;
    }

    .misc_explain {
      margin: 20px;
    }

    .jam_demo_box {
      border: 2px solid #dadada;
      padding: 20px;
      margin: 20px;
    }
    </style>

    <p class="misc_explain">The container of the page will have the following
    CSS classes based on the state of the jam, use that to change to appearance
    accordingly:</p>

    <ul class="misc_explain">
      <li>
        <code>before_start</code> Before the jam has started
      </li>
      <li>
        <code>during_submit</code> During the submission period
      </li>
      <li>
        <code>during_voting</code> During the voting period if applicable
      </li>
      <li>
        <code>after_voting</code> After the jam is over
      </li>
    </ul>

    <p class="misc_explain">Submitted games will automatically appear in a grid
    on the bottom of the page.<p>

