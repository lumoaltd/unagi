// To parse this JSON data, do
//
//     final waveformData = waveformDataFromMap(jsonString);

import 'dart:convert';

class WaveformData {
    WaveformData({
        this.version,
        this.channels,
        this.sampleRate,
        this.samplesPerPixel,
        this.bits,
        this.length,
        this.data,
    });

    int version;
    int channels;
    int sampleRate;
    int samplesPerPixel;
    int bits;
    int length;
    List<int> data;

    factory WaveformData.fromJson(String str) => WaveformData.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory WaveformData.fromMap(Map<String, dynamic> json) => WaveformData(
        version: json["version"],
        channels: json["channels"],
        sampleRate: json["sample_rate"],
        samplesPerPixel: json["samples_per_pixel"],
        bits: json["bits"],
        length: json["length"],
        data: List<int>.from(json["data"].map((x) => x)),
    );

    Map<String, dynamic> toMap() => {
        "version": version,
        "channels": channels,
        "sample_rate": sampleRate,
        "samples_per_pixel": samplesPerPixel,
        "bits": bits,
        "length": length,
        "data": List<dynamic>.from(data.map((x) => x)),
    };
}
