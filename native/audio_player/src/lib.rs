use std::io::BufReader;
use std::fs::File;
use rodio::{Decoder, OutputStream, Sink};

#[rustler::nif]
fn play(file_path: String) {
    let audio_file = File::open(file_path).unwrap();
    let buf = BufReader::new(audio_file);
    let source = Decoder::new(buf).unwrap();

    let (_stream, stream_handle) = OutputStream::try_default().unwrap();
    let sink = Sink::try_new(&stream_handle).unwrap();

    sink.append(source);

    // The sound plays in a separate thread. This call will block the current thread until the sink
    // has finished playing all its queued sounds.
    sink.sleep_until_end();
}

rustler::init!("Elixir.AudioPlayer", [play]);
