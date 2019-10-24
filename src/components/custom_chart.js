import Chart from 'chart.js'

export class CustomChart {
  constructor() {
    const element = document.getElementById('chart-spike')
    this.chart = this._generateChart(element)
  }

  _generateChart(element) {
    const parameters = this._parameters()

    return new Chart(
      element,
      parameters,
    )
  }

  _parameters() {
    return {
      type: 'line',
      data: this._data(),
      options: this._options(),
    }
  }

  _data() {
    return {
      labels: ['a', 'b', 'c', 'd', 'e'],
      datasets: this._datasets(),
    }
  }

  _datasets() {
    return [
      {
        label: 'label_1',
        data: [1, 7, 3, -2, 0],
        backgroundColor: [
          'rgba(20, 99, 255, 0.2)',
        ],
        borderColor: [
          'rgba(20, 99, 255, 1)',
        ],
        borderWidth: 1,
        lineTension: 0,
      },
      {
        label: 'label_2',
        data: [10, 11, 0],
      }
    ]
  }

  _options() {
    return {
      responsive: true,
      legend: {
        display: true,
        position: 'bottom',
      },
    }
  }
}
