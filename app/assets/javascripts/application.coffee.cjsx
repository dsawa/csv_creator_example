#= require jquery
#= require react
#= require fixed-data-table
#= require_tree ./mixins
#= require_tree ./components

@Table = FixedDataTable.Table
@Column = FixedDataTable.Column

@ReactRoot = document.getElementById('csv-creator-app')

React.render <ZombiesTable/>, ReactRoot
