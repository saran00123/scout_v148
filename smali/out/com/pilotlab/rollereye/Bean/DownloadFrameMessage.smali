.class public Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;
.super Ljava/lang/Object;
.source "DownloadFrameMessage.java"


# instance fields
.field private data:[B

.field private data_length:I

.field private format:I

.field private index:J

.field private info:[B

.field private par1:I

.field private par2:I

.field private par3:I

.field private par4:I

.field private session:I

.field private timeStamp:J

.field private type:I


# direct methods
.method public constructor <init>([BI[B)V
    .registers 4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;->data:[B

    .line 27
    iput p2, p0, Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;->data_length:I

    .line 28
    iput-object p3, p0, Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;->info:[B

    .line 29
    iget-object p1, p0, Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;->info:[B

    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;->convert([B)V

    return-void
.end method

.method private convert([B)V
    .registers 4

    const/4 v0, 0x0

    .line 35
    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/Utils/JCType;->byte2uint2long([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;->index:J

    const/4 v0, 0x4

    .line 36
    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/Utils/JCType;->byte2long([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;->timeStamp:J

    const/16 v0, 0xc

    .line 37
    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/Utils/JCType;->byte2int([BI)I

    move-result v0

    iput v0, p0, Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;->session:I

    const/16 v0, 0x10

    .line 38
    aget-byte v0, p1, v0

    invoke-static {v0}, Lcom/pilotlab/rollereye/Utils/JCType;->ubyteToInt(B)I

    move-result v0

    iput v0, p0, Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;->type:I

    const/16 v0, 0x11

    .line 39
    aget-byte v0, p1, v0

    invoke-static {v0}, Lcom/pilotlab/rollereye/Utils/JCType;->ubyteToInt(B)I

    move-result v0

    iput v0, p0, Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;->format:I

    const/16 v0, 0x12

    .line 40
    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/Utils/JCType;->byte2int([BI)I

    move-result v0

    iput v0, p0, Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;->par1:I

    const/16 v0, 0x16

    .line 41
    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/Utils/JCType;->byte2int([BI)I

    move-result v0

    iput v0, p0, Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;->par2:I

    const/16 v0, 0x1a

    .line 42
    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/Utils/JCType;->byte2int([BI)I

    move-result v0

    iput v0, p0, Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;->par3:I

    const/16 v0, 0x1e

    .line 43
    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/Utils/JCType;->byte2int([BI)I

    move-result p1

    iput p1, p0, Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;->par4:I

    return-void
.end method


# virtual methods
.method public getData()[B
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;->data:[B

    return-object v0
.end method

.method public getData_length()I
    .registers 2

    .line 95
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;->data_length:I

    return v0
.end method

.method public getFormat()I
    .registers 2

    .line 67
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;->format:I

    return v0
.end method

.method public getIndex()J
    .registers 3

    .line 51
    iget-wide v0, p0, Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;->index:J

    return-wide v0
.end method

.method public getPar1()I
    .registers 2

    .line 71
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;->par1:I

    return v0
.end method

.method public getPar2()I
    .registers 2

    .line 75
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;->par2:I

    return v0
.end method

.method public getPar3()I
    .registers 2

    .line 79
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;->par3:I

    return v0
.end method

.method public getPar4()I
    .registers 2

    .line 83
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;->par4:I

    return v0
.end method

.method public getSession()I
    .registers 2

    .line 59
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;->session:I

    return v0
.end method

.method public getTimeStamp()J
    .registers 3

    .line 55
    iget-wide v0, p0, Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;->timeStamp:J

    return-wide v0
.end method

.method public getType()I
    .registers 2

    .line 63
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;->type:I

    return v0
.end method

.method public setData([B)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;->data:[B

    return-void
.end method

.method public setData_length(I)V
    .registers 2

    .line 99
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;->data_length:I

    return-void
.end method
