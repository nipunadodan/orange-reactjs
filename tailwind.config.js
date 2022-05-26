module.exports = {
  content: [
    "./src/**/*.{js,jsx,ts,tsx}",
  ],
  darkMode: 'class',
  theme: {
    extend: {
      colors:{
        transparent: 'transparent',
        current:'currentColor',
        orange:{
          light:'#d75046',
          DEFAULT:'#D33C31',
          dark:'#c13429',
        }
      }
    },
  },
  plugins: [],
}
