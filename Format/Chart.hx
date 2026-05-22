class Chart {
    static function main() {
        var chart = Chartloader.loadChart("assets/songs/$songName/data/$songName-chart.json");
        trace("Quantidade de notas:" + chart.notes.length);

        for (i in 0...chart.notes.length){
            var note = chart.notes[i];
            trace("Nota " + 1);
            trace("sl: " + note.sl);
            switch (note.type) {
                case 0: trace("Tipo: Dad canta"); break;
                case 1: trace("Tipo: Gf canta"); break;
                case 2: trace("Tipo: Bf canta"); break;
                case 3...4...5...6: trace("Tipo: Jogadores Adicionais cantam"); break;
            }

        for (note in chart.notes) {
            trace (
            "Time: " + note.time
             + " | ID: " + note.id
                    + " | Sustain: " + note.sLen
                    + " | Type: " + note.type
     );
   }
}
 }
   }