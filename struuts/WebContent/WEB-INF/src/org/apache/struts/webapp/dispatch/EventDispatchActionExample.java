/*
 * $Id: EventDispatchActionExample.java 384093 2006-03-08 01:58:10Z niallp $ 
 *
 * Copyright 2006 The Apache Software Foundation.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *      http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.apache.struts.webapp.dispatch;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.actions.ActionDispatcher;
import org.apache.struts.actions.EventDispatchAction;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;

/**
 * Example EventDispatchAction.
 *
 * @version $Rev: 384093 $ $Date: 2006-03-08 01:58:10 +0000 (Wed, 08 Mar 2006) $
 */
public class EventDispatchActionExample extends EventDispatchAction {

    private int fooCount;
    private int barCount;

    /**
     * Example "foo" method.
     *
     * @param mapping The ActionMapping used to select this instance
     * @param form The optional ActionForm bean for this request
     * @param request The servlet request we are processing
     * @param response The servlet response we are creating
     *
     * @exception Exception if business logic throws an exception
     */
    public ActionForward doFoo(ActionMapping mapping,
                               ActionForm form,
                               HttpServletRequest request,
                               HttpServletResponse response)
        throws Exception {

        fooCount++;

        ActionMessages messages = new ActionMessages();
        messages.add("foo", new ActionMessage("count.foo.message", fooCount+""));
        saveMessages(request, messages);

        return (mapping.findForward("success"));

    }

    /**
     * Example "bar" method.
     *
     * @param mapping The ActionMapping used to select this instance
     * @param form The optional ActionForm bean for this request
     * @param request The servlet request we are processing
     * @param response The servlet response we are creating
     *
     * @exception Exception if business logic throws an exception
     */
    public ActionForward doBar(ActionMapping mapping,
                               ActionForm form,
                               HttpServletRequest request,
                               HttpServletResponse response)
        throws Exception {
        barCount++;

        ActionMessages messages = new ActionMessages();
        messages.add("bar", new ActionMessage("count.bar.message", barCount+""));
        saveMessages(request, messages);

        return (mapping.findForward("success"));

    }

}
