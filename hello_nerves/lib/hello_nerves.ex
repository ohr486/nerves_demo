defmodule HelloNerves do
  use GenServer
  require Logger

  alias Circuits.GPIO

  def hello, do: :nerves

  def start_link(_) do
    GenServer.start_link(__MODULE__, [])
  end

  def init(_) do
    {:ok, button} = GPIO.open(5, :input, pull_mode: :pullup)
    GPIO.set_interrupts(button, :both)
    {:ok, %{button: button}}
  end

  def handle_info({:circuits_gpio, 5, _timestamp, value}, state) do
    Logger.debug("Button is now #{value}")
    {:noreply, state}
  end
end
