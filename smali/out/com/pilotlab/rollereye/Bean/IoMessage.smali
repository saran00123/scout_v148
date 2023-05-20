.class public Lcom/pilotlab/rollereye/Bean/IoMessage;
.super Ljava/lang/Object;
.source "IoMessage.java"


# static fields
.field public static IOTYPE_USER_IPCAM_AUDIOSTART:I = 0x300

.field public static IOTYPE_USER_IPCAM_AUDIOSTOP:I = 0x301

.field public static IOTYPE_USER_IPCAM_SPEAKERSTART:I = 0x350

.field public static IOTYPE_USER_IPCAM_SPEAKERSTOP:I = 0x351

.field public static IOTYPE_USER_IPCAM_START:I = 0x1ff

.field public static IOTYPE_USER_IPCAM_STOP:I = 0x2ff

.field public static P2P_TYPE:I = 0x900

.field public static RESEND_OFF:I = 0x0

.field public static RESEND_ON:I = 0x1

.field public static SOCKET_TYPE:I = 0x800


# instance fields
.field private body:Ljava/lang/String;

.field private data:[B

.field private data_length:I

.field private necessary:Z

.field private resend:I

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/IoMessage;->type:I

    .line 25
    iput-object p2, p0, Lcom/pilotlab/rollereye/Bean/IoMessage;->body:Ljava/lang/String;

    .line 26
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/IoMessage;->data:[B

    .line 27
    sget p1, Lcom/pilotlab/rollereye/Bean/IoMessage;->RESEND_OFF:I

    iput p1, p0, Lcom/pilotlab/rollereye/Bean/IoMessage;->resend:I

    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/Bean/IoMessage;->necessary:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .registers 4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/IoMessage;->type:I

    .line 41
    iput-object p2, p0, Lcom/pilotlab/rollereye/Bean/IoMessage;->body:Ljava/lang/String;

    .line 42
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/IoMessage;->data:[B

    .line 43
    iput p3, p0, Lcom/pilotlab/rollereye/Bean/IoMessage;->resend:I

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/Bean/IoMessage;->necessary:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .registers 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/IoMessage;->type:I

    .line 33
    iput-object p2, p0, Lcom/pilotlab/rollereye/Bean/IoMessage;->body:Ljava/lang/String;

    .line 34
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/IoMessage;->data:[B

    .line 35
    sget p1, Lcom/pilotlab/rollereye/Bean/IoMessage;->RESEND_OFF:I

    iput p1, p0, Lcom/pilotlab/rollereye/Bean/IoMessage;->resend:I

    .line 36
    iput-boolean p3, p0, Lcom/pilotlab/rollereye/Bean/IoMessage;->necessary:Z

    return-void
.end method

.method public constructor <init>(I[B)V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/IoMessage;->type:I

    .line 49
    iput-object p2, p0, Lcom/pilotlab/rollereye/Bean/IoMessage;->data:[B

    .line 50
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/IoMessage;->body:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/IoMessage;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[B
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/IoMessage;->data:[B

    return-object v0
.end method

.method public getData_length()I
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/IoMessage;->data:[B

    if-eqz v0, :cond_7

    .line 91
    array-length v0, v0

    iput v0, p0, Lcom/pilotlab/rollereye/Bean/IoMessage;->data_length:I

    .line 93
    :cond_7
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/IoMessage;->data_length:I

    return v0
.end method

.method public getResend()I
    .registers 2

    .line 58
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/IoMessage;->resend:I

    return v0
.end method

.method public getType()I
    .registers 2

    .line 54
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/IoMessage;->type:I

    return v0
.end method

.method public isNecessary()Z
    .registers 2

    .line 82
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/Bean/IoMessage;->necessary:Z

    return v0
.end method

.method public setBody(Ljava/lang/String;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/IoMessage;->body:Ljava/lang/String;

    return-void
.end method

.method public setNecessary(Z)V
    .registers 2

    .line 86
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/Bean/IoMessage;->necessary:Z

    return-void
.end method

.method public setResend(I)V
    .registers 2

    .line 62
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/IoMessage;->resend:I

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 66
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/IoMessage;->type:I

    return-void
.end method
