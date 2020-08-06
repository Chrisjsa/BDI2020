import React from "react"

import { connect } from "react-redux"

import { leerTips, setCurrentTip } from "../../state/tip/tipActions"

import Crud from "../layout/Crud"

import TipForm from "./TipForm"

const CrudTip = ({
  tips,
  tipsCols,
  loading,
  currentTip,
  leerTips,
  setCurrentTip,
}) => {
  return (
    <Crud
      dataName="Tips"
      data={tips}
      columns={tipsCols}
      setCurrentData={setCurrentTip}
      loading={loading}
      readFn={leerTips}
      Form={TipForm}
    />
  )
}

const mapActionsToProps = {
  leerTips,
  setCurrentTip,
}

const mapStateToProps = state => ({
  tips: state.tips.tips,
  tipsCols: state.tips.tipsCols,
  currentTip: state.tips.currentTip,
  loading: state.tips.loading,
})

export default connect(mapStateToProps, mapActionsToProps)(CrudTip)
