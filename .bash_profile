PATH=$HOME/bin:$PATH
export PATH

#export GREP_OPTIONS=' —color=auto'

files=(
  ~/.path ,
  ~/.bash_prompt ,
  ~/.exports ,
  ~/.aliases ,
  ~/.functions ,
  ~/.extra ,
  ~/.developer_profile ,
)

for file in ${files[@]} ; do
  [ -r "$file" ] && source "$file" # && echo "Processed '$file'"
done

unset file
unset files