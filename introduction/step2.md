# Include a Custom Rule

In this example, the fictional "Proprietary" corporation provides its own proprietary servlet and filter annotations for dependency injection.
If the application uses them, they must be replaced with the standard Java EE 6 annotations.
This example demonstrates how to create an XML-based rule that searches for these proprietary annotations and reports on them.

This XML-based Windup rule searches for the following annotations:

* _@ProprietaryServlet_: This is the equivalent of the Java EE 6 _@WebServlet_ annotation.
* _@ProprietaryFilter_: This is the equivalent of the Java EE 6 _@WebFilter_ annotation.
* _@ProprietaryInitParam_: This is the equivalent of the Java EE 6 _@WebInitParam_ annotation.

*Note:* Windup only analyzes XML files with names ending in either `.windup.xml` or `.rhamt.xml`. Be sure to name XML-base rules using this naming convention!

A rule has been provided for you at `/sample-rules/proprietary-servlet-annotations.windup.xml`. Let's copy it into the `/rules` directory of the CLI so that it will be included upon the next execution.

<pre class="file" data-target="clipboard">cp /sample-rules/proprietary-servlet-annotations.windup.xml /test-files/rhamt-cli/rules/</pre>

Once copied, execute the CLI against the source files once more.

<pre class="file" data-target="clipboard">bin/rhamt-cli --sourceMode --input /test-files/src_example/ --output /windup-reports-xml/ --target eap --packages org.windup
</pre>

