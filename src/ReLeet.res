let run = () => {
  let input = Js.Array.slice(~start=2, ~end_=Array.length(Node.Process.argv), Node.Process.argv)

  let output = Array.map(
    word =>
      word
      |> Js.String.replaceByRe(%re("/l|i/gi"), "1")
      |> Js.String.replaceByRe(%re("/z|r/gi"), "2")
      |> Js.String.replaceByRe(%re("/e/gi"), "3")
      |> Js.String.replaceByRe(%re("/a/gi"), "4")
      |> Js.String.replaceByRe(%re("/s/gi"), "5")
      |> Js.String.replaceByRe(%re("/G/g"), "6")
      |> Js.String.replaceByRe(%re("/t/gi"), "7")
      |> Js.String.replaceByRe(%re("/b/gi"), "8")
      |> Js.String.replaceByRe(%re("/g/g"), "9")
      |> Js.String.replaceByRe(%re("/o/gi"), "0"),
    input,
  )

  Js.logMany(output)
}
