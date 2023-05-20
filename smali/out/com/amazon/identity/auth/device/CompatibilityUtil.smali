.class public final Lcom/amazon/identity/auth/device/CompatibilityUtil;
.super Ljava/lang/Object;
.source "CompatibilityUtil.java"


# static fields
.field private static final MANIFEST:Lcom/amazon/identity/auth/device/AndroidManifest;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    new-instance v0, Lcom/amazon/identity/auth/device/AndroidManifest;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/AndroidManifest;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/CompatibilityUtil;->MANIFEST:Lcom/amazon/identity/auth/device/AndroidManifest;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertCorrectManifestIntegration(Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/InvalidIntegrationException;
        }
    .end annotation

    .line 30
    sget-object v0, Lcom/amazon/identity/auth/device/CompatibilityUtil;->MANIFEST:Lcom/amazon/identity/auth/device/AndroidManifest;

    invoke-virtual {v0, p0}, Lcom/amazon/identity/auth/device/AndroidManifest;->declaresAuthorizationActivity(Landroid/content/Context;)Z

    move-result v0

    sget-object v1, Lcom/amazon/identity/auth/device/CompatibilityUtil;->MANIFEST:Lcom/amazon/identity/auth/device/AndroidManifest;

    .line 31
    invoke-virtual {v1, p0}, Lcom/amazon/identity/auth/device/AndroidManifest;->declaresWorkflowActivity(Landroid/content/Context;)Z

    move-result p0

    .line 30
    invoke-static {v0, p0}, Lcom/amazon/identity/auth/device/CompatibilityUtil;->assertCorrectManifestIntegration(ZZ)V

    return-void
.end method

.method static assertCorrectManifestIntegration(ZZ)V
    .registers 2

    if-eqz p0, :cond_d

    if-nez p1, :cond_5

    goto :goto_d

    .line 36
    :cond_5
    new-instance p0, Lcom/amazon/identity/auth/device/api/InvalidIntegrationException;

    const-string p1, "Both AuthorizationActivity and WorkflowActivity are declared in your AndroidManifest.xml. This will cause your users to have to pick from the Android activity chooser when they are redirected back from the browser, and the SDK may not behave as expected. Please remove the deprecated AuthorizationActivity from the manifest."

    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/api/InvalidIntegrationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    :goto_d
    if-nez p0, :cond_1a

    if-eqz p1, :cond_12

    goto :goto_1a

    .line 42
    :cond_12
    new-instance p0, Lcom/amazon/identity/auth/device/api/InvalidIntegrationException;

    const-string p1, "WorkflowActivity is not declared in your app\'s AndroidManifest.xml Enable manifest merging or refer to the integration guide to manually add WorkflowActivity to your manifest."

    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/api/InvalidIntegrationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a
    :goto_1a
    return-void
.end method
