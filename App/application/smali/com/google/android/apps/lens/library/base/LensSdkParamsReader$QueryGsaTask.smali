.class Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;
.super Landroid/os/AsyncTask;
.source "LensSdkParamsReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryGsaTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;->this$0:Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$1;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;-><init>(Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 7

    const/4 p1, 0x4

    const/4 v0, 0x0

    .line 114
    :try_start_0
    iget-object p0, p0, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;->this$0:Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;

    invoke-static {p0}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;->access$100(Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object p0, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;->LENS_AVAILABILITY_PROVIDER_URI:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 115
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-eqz p0, :cond_2

    .line 116
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 p0, 0x0

    .line 117
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x6

    if-le p0, v1, :cond_0

    move p0, v1

    .line 122
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 132
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p0

    .line 126
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 132
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 129
    :catch_0
    :try_start_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return-object p0

    :goto_2
    if-eqz v0, :cond_4

    .line 132
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 105
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3

    .line 140
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x19

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Lens availability result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LensSdkParamsReader"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;->this$0:Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;

    invoke-static {v0}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;->access$200(Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;)Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->lensAvailabilityStatus:I

    .line 143
    iget-object p1, p0, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;->this$0:Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;->access$302(Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;Z)Z

    .line 144
    iget-object p1, p0, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;->this$0:Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;

    invoke-static {p1}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;->access$400(Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 146
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$LensSdkParamsCallback;

    .line 148
    iget-object v1, p0, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;->this$0:Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;

    invoke-static {v1}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;->access$200(Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;)Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$LensSdkParamsCallback;->onLensSdkParamsAvailable(Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object p0, p0, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;->this$0:Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;

    invoke-static {p0}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;->access$400(Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 105
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
