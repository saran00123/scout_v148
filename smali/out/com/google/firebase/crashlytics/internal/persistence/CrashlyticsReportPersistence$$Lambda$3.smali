.class final synthetic Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence$$Lambda$3;
.super Ljava/lang/Object;
.source "CrashlyticsReportPersistence.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field private static final instance:Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence$$Lambda$3;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence$$Lambda$3;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence$$Lambda$3;-><init>()V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence$$Lambda$3;->instance:Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence$$Lambda$3;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava/io/FilenameFilter;
    .registers 1

    sget-object v0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence$$Lambda$3;->instance:Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence$$Lambda$3;

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1, p2}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->access$lambda$0(Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
