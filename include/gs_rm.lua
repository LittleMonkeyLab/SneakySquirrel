function Div(el)
  if el.classes:includes("gs-learning-outcome") then
    return {
      pandoc.RawBlock("latex", "\\begin{gslearningoutcome}"),
      el,
      pandoc.RawBlock("latex", "\\end{gslearningoutcome}")
    }
  elseif el.classes:includes("gs-activity") then
    return {
      pandoc.RawBlock("latex", "\\begin{gsactivity}"),
      el,
      pandoc.RawBlock("latex", "\\end{gsactivity}")
    }
  elseif el.classes:includes("gs-webexercise") then
    return {
      pandoc.RawBlock("latex", "\\begin{gswebexercise}"),
      el,
      pandoc.RawBlock("latex", "\\end{gswebexercise}")
    }
  elseif el.classes:includes("gs-glossary") then
    return {
      pandoc.RawBlock("latex", "\\begin{gsglossary}"),
      el,
      pandoc.RawBlock("latex", "\\end{gsglossary}")
    }
  end
end
