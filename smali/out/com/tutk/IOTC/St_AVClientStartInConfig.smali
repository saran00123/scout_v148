.class public Lcom/tutk/IOTC/St_AVClientStartInConfig;
.super Ljava/lang/Object;
.source "St_AVClientStartInConfig.java"


# instance fields
.field public account_or_identity:Ljava/lang/String;

.field public auth_type:I

.field public iotc_channel_id:I

.field public iotc_session_id:I

.field public password_or_token:Ljava/lang/String;

.field public resend:I

.field public security_mode:I

.field public sync_recv_data:I

.field public timeout_sec:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/tutk/IOTC/St_AVClientStartInConfig;->account_or_identity:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/tutk/IOTC/St_AVClientStartInConfig;->password_or_token:Ljava/lang/String;

    return-void
.end method
