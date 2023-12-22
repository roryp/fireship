namespace Quantum.Fireship {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement;

    @EntryPoint()
    operation DecideToWatchFireship() : String {
        // Prepare a qubit in a superposition state
        use qubit = Qubit();
        H(qubit); // Put the qubit into a superposition

        // Measure the qubit
        let result = M(qubit);

        // Return a message based on the quantum measurement
        return (result == Zero)
            ? "Quantum state says it's time for a Fireship video! 🚀📺"
            | "The qubit prefers coding over watching right now. 💻";
    }
}
