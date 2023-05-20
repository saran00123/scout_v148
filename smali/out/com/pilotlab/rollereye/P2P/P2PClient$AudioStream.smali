.class public Lcom/pilotlab/rollereye/P2P/P2PClient$AudioStream;
.super Ljava/lang/Object;
.source "P2PClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/P2P/P2PClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioStream"
.end annotation


# instance fields
.field public actAudioData:[B

.field public audioIdx:[I

.field public audioInfo:[B

.field public recvAudioData:[B

.field final synthetic this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;


# direct methods
.method private constructor <init>(Lcom/pilotlab/rollereye/P2P/P2PClient;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$AudioStream;->this$0:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x400

    .line 134
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$AudioStream;->recvAudioData:[B

    const/16 p1, 0x22

    .line 135
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$AudioStream;->audioInfo:[B

    const/4 p1, 0x1

    .line 136
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient$AudioStream;->audioIdx:[I

    return-void
.end method

.method synthetic constructor <init>(Lcom/pilotlab/rollereye/P2P/P2PClient;Lcom/pilotlab/rollereye/P2P/P2PClient$1;)V
    .registers 3

    .line 127
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/P2P/P2PClient$AudioStream;-><init>(Lcom/pilotlab/rollereye/P2P/P2PClient;)V

    return-void
.end method
