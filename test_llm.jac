# Create a global LLM object
glob llm = Model(model_name="gemini-2.0-flash", verbose=false)

walker TestLLM {
    can run entry {
        response = llm.prompt("Say hello in a funny way.")
        print("LLM says:", response)
    }
}
