const fs = require('fs')

// Path to your markdown file
const filePath = './docs/index.md'

fs.readFile(filePath, 'utf8', (err, mdContent) => {
  if (err) {
    console.error('Error reading the file:', err)
    return
  }

  let transformedContent = transformIframes(mdContent)

  transformedContent = replaceLinkTextWithEpisodeName(transformedContent)
  transformedContent = removeEpisodeTitles(transformedContent)
  // If you want to overwrite the original file, use filePath
  // If you want to create a new file, change 'transformedMarkdown.md' to the desired new file path
  fs.writeFile('transformedMarkdown.md', transformedContent, 'utf8', (err) => {
    if (err) {
      console.error('Error writing the file:', err)
    } else {
      console.log('File transformed and saved successfully.')
    }
  })
})

function transformIframes(mdContent) {
  return mdContent.replace(
    /<iframe src="(.*?)(embed\/)(.*?)"(.*?)><\/iframe>/g,
    (match, p1, p2, p3) => {
      const modifiedUrl = `${p1}${p3}`
      return `<a href="${modifiedUrl}">Listen to Episode</a>`
    },
  )
}

function replaceLinkTextWithEpisodeName(mdContent) {
  const lines = mdContent.split('\n')
  for (let i = 0; i < lines.length; i++) {
    if (
      lines[i].includes(
        '<a href="https://podcasters.spotify.com/pod/show/vadideki-geyik/episodes/',
      )
    ) {
      const episodeName = lines[i - 2].replace(/### /, '').trim()
      lines[i] = lines[i].replace('Listen to Episode', episodeName)
    }
  }
  return lines.join('\n')
}

function removeEpisodeTitles(mdContent) {
  const lines = mdContent.split('\n')
  const filteredLines = lines.filter((line) => !line.trim().startsWith('###'))
  return filteredLines.join('\n')
}
