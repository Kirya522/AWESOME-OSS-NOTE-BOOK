\ProvidesClass{grid}

\LoadClass{book}

\def\Step{0.5cm}
\def\MyDot{\scalebox{1}{.}}

\def\Dotbox{\hbox to \Step{\smash{\MyDot}\hfil}}
\def\DotPattern{
  \hbox to \paperwidth{\leaders\Dotbox\hfill}\kern-.4mm
  \vbox to \Step{\offinterlineskip\leaders\hbox to \paperwidth{\leaders\Dotbox\hfill}\vfill}
  \nointerlineskip\hbox to \paperwidth{\leaders\Dotbox\hfill}%
}
\def\DotGrid{\par\leaders\vbox{\DotPattern}\vfill}
