.class public final Lcom/vivo/push/h;
.super Ljava/lang/Object;
.source "PushConstants.java"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field public static final c:Landroid/net/Uri;

.field public static final d:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.vivo.push.sdk.service.SystemPushConfig/config"

    .line 240
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/push/h;->a:Landroid/net/Uri;

    const-string v0, "content://com.vivo.push.sdk.service.SystemPushConfig/permission"

    .line 241
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/push/h;->b:Landroid/net/Uri;

    const-string v0, "content://com.vivo.push.sdk.service.SystemPushConfig/clientState"

    .line 242
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/push/h;->c:Landroid/net/Uri;

    const-string v0, "content://com.vivo.push.sdk.service.SystemPushConfig/debugInfo"

    .line 243
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/push/h;->d:Landroid/net/Uri;

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_1a

    const/4 p0, 0x0

    return-object p0

    :pswitch_5
    const-string p0, "method_stop"

    return-object p0

    :pswitch_8
    const-string p0, "method_sdk_unbind"

    return-object p0

    :pswitch_b
    const-string p0, "method_sdk_bind"

    return-object p0

    :pswitch_e
    const-string p0, "method_tag_unbind"

    return-object p0

    :pswitch_11
    const-string p0, "method_tag_bind"

    return-object p0

    :pswitch_14
    const-string p0, "method_alias_unbind"

    return-object p0

    :pswitch_17
    const-string p0, "method_alias_bind"

    return-object p0

    :pswitch_data_1a
    .packed-switch 0x7d2
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method
