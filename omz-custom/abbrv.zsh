#!/usr/bin/env bash

function abbrv() {
    input_words=("$@")
    if [ "${#input_words[@]}" -eq 0 ]; then
        echo "Please enter a space-separated list of words to abbreviate:"
        read -a input_words
    fi

    for word in "${input_words[@]}"; do
        abbreviation=$(hard_sounding_phonemes "$word")
        echo "$abbreviation"
    done
}

function hard_sounding_phonemes() {
  local word="$1"
  local phonemes=()
  local hardsounding=("k" "t" "p" "s" "f" "b" "d" "g" "v" "θ" "ð" "ʃ" "ʒ" "h" "tʃ" "dʒ" "m" "n" "ŋ" "l" "r" "j" "w")

  phonemes=($(echo "$word" | phonetisaurus-g2p --model=/path/to/phonetisaurus/model --nbest=1 --beam=10 --thresh=99))

  local hard_phonemes=()
  for phoneme in "${phonemes[@]}"; do
    local first_letter=$(echo "$phoneme" | cut -c1)
    if [[ "${hardsounding[@]}" =~ "$first_letter" ]]; then
      hard_phonemes+=("$phoneme")
    fi
  done

  echo -n "${hard_phonemes[*]}"
}


