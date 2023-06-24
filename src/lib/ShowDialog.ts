import { registerPlugin } from '@capacitor/core';

export interface ShowDialog {
  show(options: { title: string, message: string }): Promise<{ title: string, message: string }>;
}

const ShowDialog = registerPlugin<ShowDialog>('ShowDialog');

export default ShowDialog;