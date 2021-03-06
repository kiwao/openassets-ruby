class Bitcoin::Protocol::TxWitness

  attr_reader :tx_in_wit

  def initialize
    @tx_in_wit = []
  end

  # Add witness
  # @param[Bitcoin::Protocol::TxInWitness] tx_in_wit witness object
  def add_witness(tx_in_wit)
    (@tx_in_wit ||= []) << tx_in_wit
  end

  # output witness in raw binary format
  def to_payload
    payload = ""
    tx_in_wit.each{|w|payload << w.to_payload}
    payload
  end

end