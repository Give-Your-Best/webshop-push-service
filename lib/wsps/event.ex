defmodule Wsps.Event do
  @moduledoc """
  TODO.
  """

  @type t :: %Wsps.Event{
          topic: bitstring(),
          data: any(),
          event: bitstring()
        }

  @enforce_keys [:topic, :data, :event]
  defstruct @enforce_keys
end
