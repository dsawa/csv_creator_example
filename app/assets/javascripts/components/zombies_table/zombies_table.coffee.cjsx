@ZombiesTable = React.createClass

  mixins: [Http]

  getInitialState: ->
    data: []
    tableWidth: window.innerWidth - 20

  componentDidMount: ->
    success = (response) =>
      @setState(data: response)

    @get('/zombies.json', { success: success })

  render: ->
    <div className="zombies-table">
      <Table rowHeight={50} headerHeight={50} rowGetter={this._rowGetter} rowsCount={@state.data.length}
        width={@state.tableWidth} maxHeight={500} onColumnResizeEndCallback={@_onColumnResizeEndCallback} >
        <Column dataKey="id" label="ID" width={50} />
        <Column dataKey="name" label="Name" width={150} flexGrow={2} />
        <Column dataKey="rotting" label="Is rotting" width={100} flexGrow={1} />
        <Column dataKey="age" label="Age" width={50} flexGrow={1} />
        <Column dataKey="turn_date" label="Turn date" width={100} flexGrow={2} />
      </Table>
      <a className="btn btn--csv" href="/zombies.csv" target="_blank">Export CSV</a>
    </div>

  _rowGetter: (index) ->
    @state.data[index]
