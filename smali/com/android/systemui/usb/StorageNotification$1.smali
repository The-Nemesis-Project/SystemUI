.class Lcom/android/systemui/usb/StorageNotification$1;
.super Landroid/content/BroadcastReceiver;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/StorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/StorageNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/StorageNotification;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 93
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, action:Ljava/lang/String;
    const-string v8, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 95
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    #getter for: Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/systemui/usb/StorageNotification;->access$000(Lcom/android/systemui/usb/StorageNotification;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "notification"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 97
    .local v5, notificationManager:Landroid/app/NotificationManager;
    if-nez v5, :cond_1

    .line 111
    .end local v5           #notificationManager:Landroid/app/NotificationManager;
    :cond_0
    :goto_0
    return-void

    .line 99
    .restart local v5       #notificationManager:Landroid/app/NotificationManager;
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    #getter for: Lcom/android/systemui/usb/StorageNotification;->MediaStorageMap:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/android/systemui/usb/StorageNotification;->access$100(Lcom/android/systemui/usb/StorageNotification;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 100
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;

    .line 101
    .local v4, noti:Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    .line 102
    .local v6, r:Landroid/content/res/Resources;
    #getter for: Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;->mMediaStorageTitleId:I
    invoke-static {v4}, Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;->access$200(Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 103
    .local v7, title:Ljava/lang/CharSequence;
    #getter for: Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;->mMediaStorageMessageId:I
    invoke-static {v4}, Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;->access$300(Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 104
    .local v3, message:Ljava/lang/CharSequence;
    #getter for: Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;->mMediaStorageNotificationLocale:Landroid/app/Notification;
    invoke-static {v4}, Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;->access$400(Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;)Landroid/app/Notification;

    move-result-object v8

    iput-object v7, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 105
    #getter for: Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;->mMediaStorageNotificationLocale:Landroid/app/Notification;
    invoke-static {v4}, Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;->access$400(Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;)Landroid/app/Notification;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    #getter for: Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/systemui/usb/StorageNotification;->access$000(Lcom/android/systemui/usb/StorageNotification;)Landroid/content/Context;

    move-result-object v9

    #getter for: Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;->mMediaStorageNotificationLocale:Landroid/app/Notification;
    invoke-static {v4}, Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;->access$400(Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;)Landroid/app/Notification;

    move-result-object v10

    iget-object v10, v10, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v8, v9, v7, v3, v10}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 106
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    #getter for: Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;
    invoke-static {v9}, Lcom/android/systemui/usb/StorageNotification;->access$500(Lcom/android/systemui/usb/StorageNotification;)Landroid/app/Notification;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1

    .line 108
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #message:Ljava/lang/CharSequence;
    .end local v4           #noti:Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;
    .end local v5           #notificationManager:Landroid/app/NotificationManager;
    .end local v6           #r:Landroid/content/res/Resources;
    .end local v7           #title:Ljava/lang/CharSequence;
    :cond_2
    const-string v8, "android.systemui.usb.STORAGE_NOTIFICATION_CANCEL"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 109
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    #getter for: Lcom/android/systemui/usb/StorageNotification;->MediaStorageMap:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/android/systemui/usb/StorageNotification;->access$100(Lcom/android/systemui/usb/StorageNotification;)Ljava/util/HashMap;

    move-result-object v8

    const-string v9, "nid"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
