.class public Lcom/tutk/IOTC/St_LogAttr;
.super Ljava/lang/Object;
.source "St_LogAttr.java"


# instance fields
.field public file_max_count:I

.field public file_max_size:I

.field public log_level:Lcom/tutk/IOTC/LogLevel;

.field public path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lcom/tutk/IOTC/LogLevel;->LEVEL_VERBOSE:Lcom/tutk/IOTC/LogLevel;

    iput-object v0, p0, Lcom/tutk/IOTC/St_LogAttr;->log_level:Lcom/tutk/IOTC/LogLevel;

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/tutk/IOTC/St_LogAttr;->path:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/tutk/IOTC/St_LogAttr;->file_max_size:I

    .line 7
    iput v0, p0, Lcom/tutk/IOTC/St_LogAttr;->file_max_count:I

    return-void
.end method
