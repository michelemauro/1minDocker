import gradio as gr


def respond(
    message,
    history):
    message_back = f"Your message is: {message}"
    response = ""
    for m in message_back:
        response += m
        yield response

demo = gr.ChatInterface(
    respond,
    title="Echo Bot",
)

if __name__ == "__main__":
    demo.launch(server_name="0.0.0.0", server_port=7860)
