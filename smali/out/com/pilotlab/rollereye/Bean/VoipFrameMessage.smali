.class public Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;
.super Ljava/lang/Object;
.source "VoipFrameMessage.java"


# instance fields
.field private data:[B

.field private data_length:I

.field private format:I

.field private index:I

.field private info:[B

.field private info_length:I

.field private par1:I

.field private par2:I

.field private par3:I

.field private par4:I

.field private session:I

.field private timeStamp:J

.field private type:I


# direct methods
.method public constructor <init>([BIJIIIIIII)V
    .registers 13

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x22

    .line 9
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->info:[B

    .line 27
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->data:[B

    .line 28
    array-length p1, p1

    iput p1, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->data_length:I

    .line 29
    iput p2, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->index:I

    .line 30
    iput-wide p3, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->timeStamp:J

    .line 31
    iput p5, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->session:I

    .line 32
    iput p6, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->type:I

    .line 33
    iput p7, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->format:I

    .line 34
    iput p8, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->par1:I

    .line 35
    iput p9, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->par2:I

    .line 36
    iput p10, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->par3:I

    .line 37
    iput p11, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->par4:I

    .line 38
    invoke-direct {p0}, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->convert()V

    return-void
.end method

.method private convert()V
    .registers 8

    const/16 v0, 0x22

    .line 42
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->info:[B

    .line 43
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->info:[B

    array-length v0, v0

    iput v0, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->info_length:I

    .line 44
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->index:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pilotlab/rollereye/Utils/JCType;->intToBytes(IZ)[B

    move-result-object v0

    iget-object v2, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->info:[B

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    iget-wide v5, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->timeStamp:J

    invoke-static {v5, v6, v1}, Lcom/pilotlab/rollereye/Utils/JCType;->longToBytes(JZ)[B

    move-result-object v0

    iget-object v2, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->info:[B

    const/16 v5, 0x8

    invoke-static {v0, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->session:I

    invoke-static {v0, v1}, Lcom/pilotlab/rollereye/Utils/JCType;->intToBytes(IZ)[B

    move-result-object v0

    iget-object v2, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->info:[B

    const/16 v5, 0xc

    invoke-static {v0, v4, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->info:[B

    iget v2, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->type:I

    invoke-static {v2}, Lcom/pilotlab/rollereye/Utils/JCType;->intToByte(I)B

    move-result v2

    const/16 v5, 0x10

    aput-byte v2, v0, v5

    .line 48
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->info:[B

    iget v2, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->format:I

    invoke-static {v2}, Lcom/pilotlab/rollereye/Utils/JCType;->intToByte(I)B

    move-result v2

    const/16 v5, 0x11

    aput-byte v2, v0, v5

    .line 49
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->par1:I

    invoke-static {v0, v1}, Lcom/pilotlab/rollereye/Utils/JCType;->intToBytes(IZ)[B

    move-result-object v0

    iget-object v2, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->info:[B

    const/16 v5, 0x12

    invoke-static {v0, v4, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->par2:I

    invoke-static {v0, v1}, Lcom/pilotlab/rollereye/Utils/JCType;->intToBytes(IZ)[B

    move-result-object v0

    iget-object v2, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->info:[B

    const/16 v5, 0x16

    invoke-static {v0, v4, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->par3:I

    invoke-static {v0, v1}, Lcom/pilotlab/rollereye/Utils/JCType;->intToBytes(IZ)[B

    move-result-object v0

    iget-object v2, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->info:[B

    const/16 v5, 0x1a

    invoke-static {v0, v4, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->par4:I

    invoke-static {v0, v1}, Lcom/pilotlab/rollereye/Utils/JCType;->intToBytes(IZ)[B

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->info:[B

    const/16 v2, 0x1e

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getData()[B
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->data:[B

    return-object v0
.end method

.method public getData_length()I
    .registers 2

    .line 96
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->data_length:I

    return v0
.end method

.method public getInfo()[B
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->info:[B

    return-object v0
.end method

.method public getInfo_length()I
    .registers 2

    .line 104
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->info_length:I

    return v0
.end method

.method public setFormat(I)V
    .registers 2

    .line 72
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->format:I

    return-void
.end method

.method public setIndex(I)V
    .registers 2

    .line 56
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->index:I

    return-void
.end method

.method public setPar1(I)V
    .registers 2

    .line 76
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->par1:I

    return-void
.end method

.method public setPar2(I)V
    .registers 2

    .line 80
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->par2:I

    return-void
.end method

.method public setPar3(I)V
    .registers 2

    .line 84
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->par3:I

    return-void
.end method

.method public setPar4(I)V
    .registers 2

    .line 88
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->par4:I

    return-void
.end method

.method public setSession(I)V
    .registers 2

    .line 64
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->session:I

    return-void
.end method

.method public setTimeStamp(J)V
    .registers 3

    .line 60
    iput-wide p1, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->timeStamp:J

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 68
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;->type:I

    return-void
.end method
