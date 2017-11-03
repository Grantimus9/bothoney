# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Bothoney.Repo.insert!(%Bothoney.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

posts = [
  %{
    "title" => "Grant Nelson",
    "body" => "Lawyer, Email: grantmnelsn@gmail.com, phone number 443 300 7575"
  },
  %{
    "title" => "Chance The Rapper",
    "body" => "Rapper, Email: samedrugs@gmail.com, phone number 212 411 7854"
  },
  %{
    "title" => "Matt Speck",
    "body" => "Rapper, Email: morethanaspeck@gmail.com, phone number 111 111 1111"
  },
  %{
    "title" => "Rob Gordon",
    "body" => "Commissioner, Email: batman@gmail.com, phone number 123 228 425-1"
  },
  %{
    "title" => "Matt Brems",
    "body" => "Trapper, Email: me&u_by_cassieisthebestsongofalltime@gmail.com, phone number 222 222 2222"
  },
  %{
    "title" => "TERMS OF USE WARNING",
    "body" => "If you continue to automatically extract data from this site we will sue you. It is a violation of our terms of use."
  },
  %{
    "title" => "A Poem We Registered With the Copyright Office (OK I DIDN'T WRITE THIS)",
    "body" => "Turning and turning in the widening gyre
                The falcon cannot hear the falconer;
                Things fall apart; the centre cannot hold;
                Mere anarchy is loosed upon the world,
                The blood-dimmed tide is loosed, and everywhere
                The ceremony of innocence is drowned;
                The best lack all conviction, while the worst
                Are full of passionate intensity.

                Surely some revelation is at hand;
                Surely the Second Coming is at hand.
                The Second Coming! Hardly are those words out
                When a vast image out of Spiritus Mundi
                Troubles my sight: somewhere in sands of the desert
                A shape with lion body and the head of a man,
                A gaze blank and pitiless as the sun,
                Is moving its slow thighs, while all about it
                Reel shadows of the indignant desert birds.
                The darkness drops again; but now I know
                That twenty centuries of stony sleep
                Were vexed to nightmare by a rocking cradle,
                And what rough beast, its hour come round at last,
                Slouches towards Bethlehem to be born? "
  },
  %{
    "title" => "Douglas Anderson",
    "body" => "Attorney, danderson+crawlerhoneypot@gmail.com"
  }
]

Enum.each(posts, &Bothoney.Forums.create_post(&1))
