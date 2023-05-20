.class public Lcom/pilotlab/rollereye/Manager/TokenInterceptor;
.super Ljava/lang/Object;
.source "TokenInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field private static TAG:Ljava/lang/String;

.field private static final UTF8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "UTF-8"

    .line 32
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/pilotlab/rollereye/Manager/TokenInterceptor;->UTF8:Ljava/nio/charset/Charset;

    const-string v0, "TokenInterceptor"

    .line 33
    sput-object v0, Lcom/pilotlab/rollereye/Manager/TokenInterceptor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 41
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v1

    const-wide v2, 0x7fffffffffffffffL

    .line 44
    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->request(J)Z

    .line 45
    invoke-interface {v1}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v1

    .line 46
    sget-object v2, Lcom/pilotlab/rollereye/Manager/TokenInterceptor;->UTF8:Ljava/nio/charset/Charset;

    .line 47
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 49
    sget-object v2, Lcom/pilotlab/rollereye/Manager/TokenInterceptor;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 51
    :cond_2a
    invoke-virtual {v1}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 55
    :try_start_32
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "code"

    .line 57
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    sget v1, Lcom/pilotlab/rollereye/Common/ServerConstent;->CODE_TOKEN:I

    if-ne v0, v1, :cond_6b

    .line 58
    invoke-static {}, Lcom/pilotlab/rollereye/RollerEyeApplication;->finishActivity()V

    .line 59
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 61
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Global;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LaunchActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 62
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Global;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_66
    .catch Lorg/json/JSONException; {:try_start_32 .. :try_end_66} :catch_67

    goto :goto_6b

    :catch_67
    move-exception v0

    .line 65
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_6b
    :goto_6b
    return-object p1
.end method
