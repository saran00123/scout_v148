.class public Lcom/tutk/IOTC/St_AVServStartInConfig;
.super Ljava/lang/Object;
.source "St_AVServStartInConfig.java"


# instance fields
.field public ability_request:Lcom/tutk/IOTC/AVAPIs$avAbilityRequestFn;

.field public change_password_request:Lcom/tutk/IOTC/AVAPIs$avChangePasswordRequestFn;

.field public identity_array_request:Lcom/tutk/IOTC/AVAPIs$avIdentityArrayRequestFn;

.field public iotc_channel_id:I

.field public iotc_session_id:I

.field public json_request:Lcom/tutk/IOTC/AVAPIs$avJsonCtrlRequestFn;

.field public password_auth:Lcom/tutk/IOTC/AVAPIs$avPasswordAuthFn;

.field public resend:I

.field public security_mode:I

.field public server_type:I

.field public timeout_sec:I

.field public token_auth:Lcom/tutk/IOTC/AVAPIs$avTokenAuthFn;

.field public token_delete:Lcom/tutk/IOTC/AVAPIs$avTokenDeleteFn;

.field public token_request:Lcom/tutk/IOTC/AVAPIs$avTokenRequestFn;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/tutk/IOTC/St_AVServStartInConfig;->password_auth:Lcom/tutk/IOTC/AVAPIs$avPasswordAuthFn;

    .line 26
    iput-object v0, p0, Lcom/tutk/IOTC/St_AVServStartInConfig;->token_auth:Lcom/tutk/IOTC/AVAPIs$avTokenAuthFn;

    .line 27
    iput-object v0, p0, Lcom/tutk/IOTC/St_AVServStartInConfig;->token_request:Lcom/tutk/IOTC/AVAPIs$avTokenRequestFn;

    .line 28
    iput-object v0, p0, Lcom/tutk/IOTC/St_AVServStartInConfig;->token_delete:Lcom/tutk/IOTC/AVAPIs$avTokenDeleteFn;

    .line 29
    iput-object v0, p0, Lcom/tutk/IOTC/St_AVServStartInConfig;->identity_array_request:Lcom/tutk/IOTC/AVAPIs$avIdentityArrayRequestFn;

    .line 30
    iput-object v0, p0, Lcom/tutk/IOTC/St_AVServStartInConfig;->ability_request:Lcom/tutk/IOTC/AVAPIs$avAbilityRequestFn;

    .line 31
    iput-object v0, p0, Lcom/tutk/IOTC/St_AVServStartInConfig;->change_password_request:Lcom/tutk/IOTC/AVAPIs$avChangePasswordRequestFn;

    .line 32
    iput-object v0, p0, Lcom/tutk/IOTC/St_AVServStartInConfig;->json_request:Lcom/tutk/IOTC/AVAPIs$avJsonCtrlRequestFn;

    return-void
.end method
